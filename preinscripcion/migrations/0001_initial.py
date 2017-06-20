# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-20 01:20
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import preinscripcion.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CicloLectivo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_apertura_ciclo', models.DateField()),
                ('fecha_cierre_ciclo', models.DateField()),
                ('fecha_inicio_preinsc_ni', models.DateField()),
                ('fecha_fin_preinsc_ni', models.DateField()),
                ('vacantes', models.PositiveIntegerField()),
                ('ultimo_nro_sorteo', models.PositiveIntegerField(default=0)),
                ('fecha_dia_sorteo', models.DateField()),
            ],
        ),
        migrations.CreateModel(
            name='Hermano',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('apellido', models.CharField(max_length=50)),
                ('nombre', models.CharField(max_length=50)),
                ('dni', models.CharField(max_length=8)),
            ],
        ),
        migrations.CreateModel(
            name='Postulante',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('apellido', models.CharField(max_length=50)),
                ('nombre', models.CharField(max_length=50)),
                ('fecha_nacimiento', models.DateField()),
                ('edad', models.PositiveIntegerField()),
                ('dni', models.CharField(max_length=8)),
                ('genero', models.CharField(choices=[('FEMENINO', 'Femenino'), ('MASCULINO', 'Masculino')], default='MASCULINO', max_length=15)),
                ('domicilio', models.CharField(max_length=150)),
                ('nacionalidad', models.CharField(max_length=150)),
                ('hermanos', models.ManyToManyField(blank=True, null=True, to='preinscripcion.Hermano')),
            ],
        ),
        migrations.CreateModel(
            name='PostulanteLimpio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('dni', models.CharField(max_length=8, unique=True)),
                ('postulante', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='preinscripcion.Postulante')),
            ],
        ),
        migrations.CreateModel(
            name='Preinscripcion4Anios',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha', models.DateField(auto_now_add=True)),
                ('hora', models.TimeField(auto_now_add=True)),
                ('nro_de_preinscripto', models.CharField(default=preinscripcion.models.id_generator, max_length=10, unique=True)),
                ('nro_de_sorteo', models.PositiveIntegerField(default=0)),
                ('estado', models.CharField(choices=[('PREINSCRIPTO', 'Preinscripto'), ('CONFIRMADO', 'Confirmado'), ('DESCARTADO', 'Descartado'), ('AUSENTE', 'Ausente'), ('RECHAZADO', 'Rechazado'), ('ALUMNO', 'Alumno')], default='PREINSCRIPTO', max_length=20)),
                ('motivo', models.TextField(default='No contesta')),
                ('confirmado', models.BooleanField(default=False)),
                ('cicloLectivo', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='preinscripcion.CicloLectivo')),
            ],
        ),
        migrations.CreateModel(
            name='PreinscripcionGeneral',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha', models.DateField(auto_now_add=True)),
                ('hora', models.TimeField(auto_now_add=True)),
                ('nro_de_preinscripto', models.CharField(max_length=10, unique=True)),
                ('nivel', models.CharField(choices=[('INICIAL', 'Inicial'), ('PRIMARIO', 'Primario'), ('SECUNDARIO', 'Secundario')], default='INICIAL', max_length=20)),
                ('grado', models.PositiveIntegerField()),
                ('confirmado', models.BooleanField(default=False)),
                ('cubrio_vacante', models.BooleanField(default=False)),
                ('cicloLectivo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='preinscripcion.CicloLectivo')),
                ('postulante', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='preinscripcion.Postulante')),
            ],
        ),
        migrations.CreateModel(
            name='Responsable',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('apellido', models.CharField(max_length=50)),
                ('nombre', models.CharField(max_length=50)),
                ('dni', models.CharField(default='12345678', max_length=8)),
                ('email', models.EmailField(max_length=254)),
                ('domicilio', models.CharField(max_length=150)),
                ('nacionalidad', models.CharField(max_length=150)),
                ('telefonoPersonal', models.CharField(blank=True, max_length=30, null=True)),
            ],
        ),
        migrations.AddField(
            model_name='postulante',
            name='madre',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='madre', to='preinscripcion.Responsable'),
        ),
        migrations.AddField(
            model_name='postulante',
            name='padre',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='padre', to='preinscripcion.Responsable'),
        ),
        migrations.AddField(
            model_name='postulante',
            name='preinscripcion',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='preinscripcion.Preinscripcion4Anios'),
        ),
        migrations.AddField(
            model_name='postulante',
            name='tutor',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='tutor', to='preinscripcion.Responsable'),
        ),
        migrations.AddField(
            model_name='postulante',
            name='vive_con',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='vive_con', to='preinscripcion.Responsable'),
        ),
    ]