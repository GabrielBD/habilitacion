# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import messages
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout

from django.forms import formset_factory

from .forms import Preinscripcion4AniosForm, PostulanteForm, ResponsableForm, CicloLectivoForm
from .models import Preinscripcion4Anios, Postulante, PostulanteConfirmado, CicloLectivo, CicloLectivo

from .decorators import group_required
import datetime

#generar pdf
from django.http import HttpResponse
from django.views.generic import View
from habilitacion.utils import render_to_pdf
from django.template.loader import get_template
#from datetime import datetime
#

  ##generar pdf
def generatePdf(request, nrop):

  if not request.session['nropreinscripto'] == nrop:
    return HttpResponse("ERROR AL GENERAR EL COMPROBANTE")

  template = get_template('preinscripcion4anios/comprobante.html')

  postulante  = Postulante.objects.get(preinscripcion__nro_de_preinscripto=nrop)

  contexto = {'postulante' : postulante }
  pdf = render_to_pdf('preinscripcion4anios/comprobante.html', contexto)

  if pdf:
    response = HttpResponse(pdf, content_type='application/pdf')
    filename = "Comprobante_Preinscripcion"
    content = "inline; filename='%s'" % (filename)
    #download = request.GET.get("download")
    #return response
    #if download:
     # content = "attachment; filename='%s'" % (filename)
      #response['Content-Disposition'] = content
    return response
  
  return HttpResponse("ERROR AL GENERAR EL COMPROBANTE")

####


# Create your views here.
#login y demases 
def login_mio(request):
  if request.method == "POST":
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(request, username=username, password=password)
    
    if user is not None:
      login(request, user)

      return redirect ('select_perfil')
    
    else:
      messages.error(request, "Usuario y/o contraseña incorrectos.")
      return render(request, 'accounts/login.html')
  else:
    return render(request, 'accounts/login.html')


#seleccionar perfil una vez logueado
@group_required('mes')
def select_perfil(request):

  ## compruebo si esta seteada la vble perfil_selec en session
  pact  = False
  ps    = ''
  if 'perfil_selec' in request.session:
    pact  = True
    ps    = request.session['perfil_selec']


  user_logueado = request.user

  user_perfiles = user_logueado.profile.perfil.all()

  if user_perfiles.count() == 1:    

    up = user_perfiles.get()
    request.session['perfil_selec'] = up.perfil

    return admin_mio(request)

  elif user_perfiles.count() == 2 and pact:

    perfil_actual = user_logueado.profile.perfil.get(perfil=request.session['perfil_selec'])
    up = user_perfiles.all().exclude(perfil=perfil_actual)
    request.session['perfil_selec'] = up[0].perfil
    string = 'Cambio de perfil con éxito. Perfil actual: ' + request.session['perfil_selec']
    messages.success(request, string)
    return admin_mio(request)

  else:

    if request.method == 'POST':

      perfil_selec    = request.POST.get('selec_perfil', '')
      request.session['perfil_selec'] = perfil_selec
      
      return admin_mio(request)

      
  return render(request, 'accounts/select_perfil.html', {
      'user_logueado'   : user_logueado,
      'user_perfiles'   : user_perfiles,
      'ps'              : ps
    })


def logout_mio(request):
    logout(request)
    return admin_preinscripciones(request)


#vista para anonimos
def landing_page(request):

  return render(request, 'home/landingpage.html')



def preinscripcion4_new(request):

  padre_context = ResponsableForm(prefix='padre')
  madre_context = ResponsableForm(prefix='madre')
  tutor_context = ResponsableForm(prefix='tutor')
  vivecon_context = ResponsableForm(prefix='vivecon')
  postulante_context = PostulanteForm(prefix='postulante')
  p4anios_context = Preinscripcion4AniosForm(prefix='preinscripcion')

  HermanosFormSet         = formset_factory(PostulanteForm, max_num=3)
  hermanosFormSet_context = HermanosFormSet(prefix='hno')
    
  if request.method == "POST":
    cdor = 0

    formpadre   = ResponsableForm(request.POST, prefix='padre') # Bound form    
    formmadre   = ResponsableForm(request.POST, prefix='madre') # Bound form    
    formtutor   = ResponsableForm(request.POST, prefix='tutor') # Bound form    
    formvivecon = ResponsableForm(request.POST, prefix='vivecon') # Bound form    
    formpostulante = PostulanteForm(request.POST, prefix='postulante') # Bound form    
    formp4anios = Preinscripcion4AniosForm(request.POST, prefix='preinscripcion') # Bound form    
    hnos       = HermanosFormSet(request.POST, prefix='hno') # Bound form

    #comienzo validaciones para cada uno
    if formpadre.is_valid(): 
      cdor += 1
      padre_context = formpadre
    else:
      padre_context = formpadre

    if formmadre.is_valid():
      cdor += 1
      madre_context = formmadre
    else:
      madre_context = formmadre


    switch_tutor = False
    if formtutor.has_changed():
      switch_tutor = True
      if formtutor.is_valid(): 
        tutor_context = formtutor
        switch_tutor = False
      else:
        tutor_context = formtutor

    if formvivecon.is_valid(): 
      vivecon_context = formvivecon
      cdor += 1
    else:
      vivecon_context = formvivecon

    if formpostulante.is_valid(): 
      cdor += 1
      postulante_context = formpostulante
    else:
      postulante_context = formpostulante

    if formp4anios.is_valid(): 
      cdor += 1
      p4anios_context = formp4anios
    else:
      p4anios_context = formp4anios

    #validacion de cada hermano
    if hnos.is_valid():
      cdor += 1
      hermanosFormSet_context = hnos
    else:
      hermanosFormSet_context = hnos

    #si los formularios necesariamente validados suman = 5 ya se puede empezar a 
    #guardar los datos
    if (cdor == 6 and switch_tutor == False):

      formpostulante = formpostulante.save(commit=False)

      formpadre   = formpadre.save()
      formmadre   = formmadre.save()
      formvivecon = formvivecon.save()

      tutor_cambio = False
      if formtutor.has_changed():
        tutor_cambio = True
        formtutor = formtutor.save()
        formpostulante.tutor = formtutor

      #calcular ciclo lectivo y asignar a la preinscripcion
      siguiente_anio   = datetime.date.today().year + 1
      cles  = CicloLectivo.objects.all()

      for cl in cles:
        if cl.fecha_apertura_ciclo.year == siguiente_anio:
          ciclo_lectivo   = cl

      #formp4anios = formp4anios.save(commit=False)    
      formp4anios = formp4anios.save()
      formp4anios.cicloLectivo = ciclo_lectivo
      formp4anios.save()

      #calculo de edad del changuito/a
      diff = (datetime.date.today() - formpostulante.fecha_nacimiento).days
      edad = str(int(diff/365))

      formpostulante.padre  = formpadre
      formpostulante.madre  = formmadre
      formpostulante.vive_con= formvivecon
      formpostulante.edad   = edad
      formpostulante.preinscripcion = formp4anios

      formpostulante.save()

      #Agrego los hermanos para cada postulante
      for hno in hnos:
        #if hno.has_changed():
          hno = hno.save(commit=False)
          hno.edad    = edad
          hno.padre   = formpadre
          hno.madre   = formmadre
          hno.vive_con = formvivecon

          if tutor_cambio:
            hno.tutor   = formtutor

          
          hno_preinsc         = Preinscripcion4Anios()
          hno_preinsc.motivo  = formp4anios.motivo
          hno_preinsc.cicloLectivo = ciclo_lectivo
          hno_preinsc.save()
          hno.preinscripcion  = hno_preinsc
          hno.save()
          formpostulante.hermanos.add(hno)

      #contexto = {'postulante'  : formpostulante}
      #return (GeneratePdf(request, contexto))

      request.session["nropreinscripto"] = formpostulante.preinscripcion.nro_de_preinscripto

      return render(request, 'preinscripcion4anios/exito.html', {
       'postulante'  : formpostulante
        })

  return render(request, 'preinscripcion4anios/new.html',{
    'formpadre'   : padre_context,
    'formmadre'   : madre_context,
    'formtutor'   : tutor_context,
    'formvivecon' : vivecon_context,
    'formpostulante'  : postulante_context,
    'formp'           : p4anios_context,
    'hermanosFormSet' : hermanosFormSet_context,
    }
        )
  


#operaciones de administradores

#pagina de inicio de admin
@login_required(login_url='/accounts/login/')
def admin_mio(request):
  
  return render(request, 'admin.html')


## operaciones relacionadas con el rol gestionpreinscripciones
#listado de todas las preinscripciones
@group_required('gestionpreinscripciones')
def admin_preinscripciones(request):

  postulantes = Postulante.objects.all().exclude(preinscripcion__isnull = True)

  cp  = postulantes.count();
  cpc = PostulanteConfirmado.objects.all().count();
  cpg = Preinscripcion4Anios.objects.filter(estado='ALUMNO').count()

  return render(request, 'admin/p4anios/preinscripciones.html',{
          'postulantes' : postulantes,
          'cp'          : cp,
          'cpc'         : cpc,
          'cpg'         : cpg
          }
          )


#listado de todas las preinscripciones de un ciclo lectivo
@group_required('gestionpreinscripciones')
def admin_p_cl(request, year):

  request.session["cl"] = year
  postulantes = Postulante.objects.all()
  resultado = []

  for postulante in postulantes:
    if postulante.preinscripcion.cicloLectivo.fecha_apertura_ciclo.year == int(year):
      resultado.append(postulante)  

  return render(request, 'admin/p4anios/preinscripciones.html',{
          'postulantes': resultado,
          }
          )


#listado de todas los postulantes
@login_required(login_url='/accounts/login/')
@group_required('gestionpreinscripciones')
def admin_postulantes(request):

  postulantes = Postulante.objects.all().exclude(preinscripcion__isnull = True)

  return render(request, 'admin/p4anios/postulantes.html',{
          'postulantes': postulantes 
          }
          )

#listado de todas los postulantes confirmados
@login_required(login_url='/accounts/login/')
def admin_postulantes_confirmados(request):

  pls = PostulanteConfirmado.objects.all()

  return render(request, 'admin/p4anios/postulantes-confirmados.html',{
          'pls': pls 
          }
          )

#confirmar formulario seleccionado
@login_required(login_url='/accounts/login/')
@group_required('gestionpreinscripciones')
def admin_confirmar(request, pid):

  preinscripcion  = Preinscripcion4Anios.objects.get(pk=pid)

  #obtengo postulante confirmado
  p                 = Postulante.objects.get(preinscripcion_id=preinscripcion.id)
  pl                = PostulanteConfirmado()
  pl.dni            = p.dni

  #sino existe lo doy de alta, sino envio errores
  ple = PostulanteConfirmado.objects.filter(dni=pl.dni).exists()
  
  if ple == False:
      pl.postulante     = p
      pl.save()
  else:
    messages.error(request, "Ya existe un formulario confirmado con el DNI que quiere ingresar.")
    return admin_preinscripciones(request)

  #ver si el formulario  no esta confirmado y si no existe un dni duplicado
  if preinscripcion.confirmado == False :

    ciclo_lectivo  = CicloLectivo.objects.get(pk=preinscripcion.cicloLectivo_id)

    nro_sorteo = ciclo_lectivo.ultimo_nro_sorteo 

    nro_sorteo = nro_sorteo + 1
    ciclo_lectivo.ultimo_nro_sorteo = nro_sorteo
    ciclo_lectivo.save()

    preinscripcion.nro_de_sorteo = nro_sorteo
    preinscripcion.confirmado = True
    preinscripcion.estado     = 'CONFIRMADO'
    preinscripcion.fecha_confirmado = datetime.date.today()
    preinscripcion.save()

    messages.success(request, 'Preinscripción CONFIRMADA. Puede imprimir el comprobante.')

    #mensaje por si tiene hermanos
    if p.hermanos.all():
      messages.info(request, "El postulante tiene hermanos de la misma edad, advertir de que el responsable deberá realizar el mismo procedimiento con las demás preinscripciones.")  

  else:
    messages.error(request, "El formulario ya se encuentra CONFIRMADO.")

  return admin_preinscripcion(request, preinscripcion.id)


##generar pdf comprobante confirmacion
 ##generar pdf
@group_required('gestionpreinscripciones')
def admin_cc(request, nrop):
  template = get_template('admin/p4anios/comprobante_confirmado.html')

  preinscripcion = Preinscripcion4Anios.objects.get(nro_de_preinscripto=nrop)

  user = request.user

  contexto = {'preinscripcion' : preinscripcion, 'user': user }
  pdf = render_to_pdf('admin/p4anios/comprobante_confirmado.html', contexto)

  if pdf:
    response = HttpResponse(pdf, content_type='application/pdf')
    filename = "Comprobante_Preinscripcion"
    content = "inline; filename='%s'" % (filename)
    #download = request.GET.get("download")
    #return response
    #if download:
     # content = "attachment; filename='%s'" % (filename)
      #response['Content-Disposition'] = content
    return response
  
  return HttpResponse("ERROR AL GENERAR EL COMPROBANTE")

####

#desconfirmar la preinscripcion seleccionada
@login_required(login_url='/accounts/login/')
@group_required('gestionpreinscripciones')
def admin_desconfirmar(request, pid):

  preinscripcion  = Preinscripcion4Anios.objects.get(pk=pid)

  if preinscripcion.confirmado == True :

    #ciclo_lectivo  = CicloLectivo.objects.get(pk=preinscripcion.cicloLectivo_id)

    #nro_sorteo = ciclo_lectivo.ultimo_nro_sorteo

    #nro_sorteo = nro_sorteo - 1

    #ciclo_lectivo.ultimo_nro_sorteo   = nro_sorteo
    #ciclo_lectivo.save()

    p   = Postulante.objects.get(preinscripcion=pid)
    pl  = PostulanteConfirmado.objects.get(postulante=p.id)
    pl.delete()

    preinscripcion.nro_de_sorteo = 0
    preinscripcion.confirmado = False
    preinscripcion.estado     = 'PREINSCRIPTO'
    preinscripcion.save()

  return admin_preinscripciones(request)


#ver una preinscripcion en particular
@login_required(login_url='/accounts/login/')
@group_required('gestionpreinscripciones')
def admin_preinscripcion(request, pid):

  #obtengo la preinscripcion con ese pid
  p  = Preinscripcion4Anios.objects.get(pk=pid)

  #obtengo el postulante de esa preinscripcion
  postulante  = Postulante.objects.get(preinscripcion = p)

  hnos        = postulante.rhermanos();

  return render(request, 'admin/p4anios/verpre.html',{
          'p': p,
          'postulante' : postulante,
          'hermanos'  : hnos
          }
  )

#listado para sorteo
@login_required(login_url='/accounts/login/')
@group_required('gestionpreinscripciones')
def admin_sorteo(request):

  pcs  = PostulanteConfirmado.objects.all();

  pcms = []
  pcfs = []
  
  for pc in pcs:
    if pc.postulante.genero == 'MASCULINO':
      pcms.append(pc)
    else:
      pcfs.append(pc)
  
  return render(request, 'admin/p4anios/sorteo.html', { 
    'pcms' : pcms,
    'pcfs' : pcfs,
    })


#listado para agregar los ganadores del sorteo
@login_required(login_url='/accounts/login/')
@group_required('gestionpreinscripciones')
def admin_agregar_ganadores(request):

  lpcs  = PostulanteConfirmado.objects.all();

  pcs = []
  
  for pc in lpcs:
    if pc.postulante.preinscripcion.estado == 'CONFIRMADO':
      pcs.append(pc)
  
  return render(request, 'admin/p4anios/agregar_ganadores.html', { 
    'pcs' : pcs
    })


#cambiar estado = ALUMNO a la preinscripcion que viene por parámetro
@login_required(login_url='/accounts/login/')
@group_required('gestionpreinscripciones')
def admin_agregar_ganador(request, pid):

  preinscripcion = Preinscripcion4Anios.objects.get(pk=pid)
  p =  preinscripcion.set_estado_alumno() 
  p.save()

  messages.success(request, "Agregado como ganador correctamente. :)")  
  
  return admin_agregar_ganadores(request)


#lsitado de ganadores
@login_required(login_url='/accounts/login/')
@group_required('gestionpreinscripciones')
def admin_postulantes_ganadores(request):

  lpcs  = PostulanteConfirmado.objects.all();

  pgs = []
  
  for pc in lpcs:
    if pc.postulante.preinscripcion.estado == 'ALUMNO':
      pgs.append(pc)
  
  return render(request, 'admin/p4anios/ganadores.html', { 
    'pgs' : pgs
    })


## operaciones relacionadas con el rol gestionciclolectivo
#dar de alta ciclo lectivo
@login_required(login_url='/accounts/login/')
@group_required('gestionciclolectivo')
def admin_alta_ciclolectivo(request):

  context = CicloLectivoForm(prefix='cl')

  if request.method == "POST":

    cl = CicloLectivoForm(request.POST, prefix='cl')

    if cl.is_valid():
      cl.save()
      messages.success(request, 'Ciclo Lectivo creado correctamente')
      context = cl
    else:
      context = cl

  return render(request, 'admin/ciclolectivo/new.html', { 'cl' : context })


#Listado de ciclos lectivos
@login_required(login_url='/accounts/login/')
@group_required('gestionciclolectivo')
def admin_index_ciclolectivo(request):

  cl_index = CicloLectivo.objects.all()

  return render(request, 'admin/ciclolectivo/index.html', { 'cl_index' : cl_index })
