# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-10-28 19:10
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mes', '0027_auto_20171028_1607'),
    ]

    operations = [
        migrations.AlterField(
            model_name='nota',
            name='motivo',
            field=models.TextField(default='Consulta', max_length=400),
        ),
    ]
