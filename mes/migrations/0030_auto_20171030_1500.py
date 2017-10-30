# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-10-30 18:00
from __future__ import unicode_literals

import ckeditor.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mes', '0029_auto_20171028_1653'),
    ]

    operations = [
        migrations.AddField(
            model_name='notai',
            name='asunto',
            field=models.CharField(default='Asunto.', max_length=100),
        ),
        migrations.AlterField(
            model_name='nota',
            name='motivo',
            field=ckeditor.fields.RichTextField(),
        ),
    ]
