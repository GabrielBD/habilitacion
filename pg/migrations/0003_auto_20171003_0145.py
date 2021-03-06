# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-10-03 04:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pg', '0002_auto_20171002_2310'),
    ]

    operations = [
        migrations.CreateModel(
            name='Perfil',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('perfil', models.CharField(choices=[('REP LEGAL', 'Representante Legal'), ('ADMINSTRACION', 'Administracion'), ('CONTABLE', 'Contable'), ('COBRANZA', 'Cobranza'), ('SECRETARIA', 'Secretaria'), ('INFORMATICA', 'Informatica'), ('MESA DE ENTRADA', 'Mesa de entrada'), ('ESCUELA', 'Escuela'), ('INICIAL', 'Inicial'), ('PRIMARIA', 'Primaria'), ('SECUNDARIA', 'Secundaria'), ('BIBLIOTECA', 'Biblioteca'), ('PARROQUIA', 'Parroquia')], default='', max_length=30)),
            ],
        ),
        migrations.AddField(
            model_name='profile',
            name='perfil',
            field=models.ManyToManyField(to='pg.Perfil'),
        ),
    ]
