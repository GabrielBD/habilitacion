# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Nota(models.Model):

	ESTADO = (
		('NUEVA', 'Nueva'),
		('RECIBIDA', 'Recibida'),
		('LEIDA', 'Leida'),
		('DERIVADA', 'Derivada'),
		('RECHAZADA', 'Rechazada')

	)

	emisor			= models.ForeignKey(User, related_name='emisor', unique=False)
	receptor		= models.ForeignKey(User, related_name='receptor', unique=False)
	fecha_emision 	= models.DateField(auto_now_add=True)
	estado 			= models.CharField(max_length=100, choices=ESTADO, default='NUEVA')

	def setEmisor(self, user):
		self.emisor = user
		return self
