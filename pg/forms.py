from django import forms
from preinscripcion.models import PreinscripcionGeneral
from datetime import date

class PgForm(forms.ModelForm):
    class Meta:
        model = PreinscripcionGeneral
        fields = ['nivel', 'anio','cicloLectivo', 'institucion_anterior',
            'telefono','localidad','provincia','motivo']
        exclude = ['nro_de_preinscripto', 'estado', 'postulante', 'confirmado', 
            'fecha_confirmado']

    def clean_motivo(self):
        caja = self.cleaned_data.get('motivo')
        if len(caja) < 10:
            raise forms.ValidationError('Escribir el motivo')
        return caja


class PgAPForm(forms.ModelForm):
    class Meta:
        model = PreinscripcionGeneral
        fields = ['puntaje']  