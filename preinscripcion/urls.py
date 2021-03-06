from django.conf.urls import url

from . import views

urlpatterns = [
    
    url(r'^preinscripcion4/new/$', views.preinscripcion4_new, name='preinscripcion4_new'),
    url(r'^home/$', views.landing_page, name='landing_page'),
    url(r'^preinscripcion4/new/comprobante/(?P<nrop>[0-9]+)/$', views.generatePdf, name='generatePdf'),


    #login
    url(r'^accounts/login/$', views.login_mio, name='login_mio'),
    url(r'^accounts/logout/$', views.logout_mio, name='logout_mio'),

    #seleccionar perfil luego de loguearse
    url(r'^accounts/selectperfil/$', views.select_perfil, name='select_perfil'),

    #operaciones de administrador
    url(r'^administrador/$', views.admin_mio, name='admin_mio'),
    url(r'^administrador/preinscripciones/$', views.admin_preinscripciones, name='admin_preinscripciones'),
    url(r'^administrador/preinscripciones/(?P<year>[0-9]{4})/$', views.admin_p_cl, name='admin_p_cl'),
    url(r'^administrador/preinscripcion/ver/(?P<pid>[0-9]+)/$', views.admin_preinscripcion, name='admin_preinscripcion'),
    url(r'^administrador/postulantes/$', views.admin_postulantes, name='admin_postulantes'),
    url(r'^administrador/post-confirmados/$', views.admin_postulantes_confirmados, name='admin_postulantes_confirmados'),
    url(r'^administrador/sorteo/$', views.admin_sorteo, name='admin_sorteo'),
    url(r'^administrador/agregarganadores/$', views.admin_agregar_ganadores, name='admin_agregar_ganadores'),
    url(r'^administrador/agregarganador/(?P<pid>[0-9]+)/$', views.admin_agregar_ganador, name='admin_agregar_ganador'),
    url(r'^administrador/ganadores/$', views.admin_postulantes_ganadores, name='admin_postulantes_ganadores'),

    url(r'^administrador/preinscripciones/confirmar/(?P<pid>[0-9]+)/$', views.admin_confirmar, name='admin_confirmar'),
    url(r'^administrador/preinscripciones/cc/(?P<nrop>[0-9]+)/$', views.admin_cc, name='admin_cc'),
    url(r'^administrador/preinscripciones/desconfirmar/(?P<pid>[0-9]+)/$', views.admin_desconfirmar, name='admin_desconfirmar'),

    url(r'^administrador/ciclolectivo/new/$', views.admin_alta_ciclolectivo, name='admin_alta_ciclolectivo'),
    url(r'^administrador/ciclolectivo/$', views.admin_index_ciclolectivo, name='admin_index_ciclolectivo'),

]