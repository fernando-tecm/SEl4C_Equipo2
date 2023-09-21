from django.db import models
from django.contrib.auth.hashers import make_password


class Usuario(models.Model):

    COUNTRY_CHOICES = [
    ("MX", "Mexico"),
    ("US", "United States"),
    ("CA", "Canda"),
    ("CL", "Chile"),
    ("PT", "Portugal"),
    ]

    GENRE_CHOICES = [
    ("hombre","Hombre"),
    ("mujer","Mujer"),
    ("prefiero no decirlo","Prefiero no decirlo"),
    ]

    username = models.CharField(max_length=15)
    age = models.PositiveIntegerField()
    email = models.EmailField()
    password = models.CharField(max_length=15)
    country = models.CharField(max_length=200,choices= COUNTRY_CHOICES)
    genre = models.CharField(max_length=200,choices= GENRE_CHOICES)

 