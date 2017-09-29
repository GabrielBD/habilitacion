# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-09-26 00:49
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('mes', '0005_notap'),
    ]

    operations = [
        migrations.CreateModel(
            name='NotaG',
            fields=[
                ('nota_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='mes.Nota')),
                ('motivo', models.CharField(default='No me acuerdo', max_length=200)),
            ],
            bases=('mes.nota',),
        ),
    ]