# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-10-11 14:01
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pg', '0004_auto_20171004_1604'),
        ('mes', '0019_remove_nota_motivo_derivar'),
    ]

    operations = [
        migrations.CreateModel(
            name='Movimiento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('motivo_derivar', models.CharField(default='', max_length=200)),
                ('fecha', models.DateField(auto_now_add=True)),
                ('destino', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='destino', to='pg.Perfil')),
                ('emisor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='emisor', to='pg.Perfil')),
                ('nota', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='nota', to='mes.Nota')),
            ],
        ),
    ]
