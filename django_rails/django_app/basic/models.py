from django.db import models

# Create your models here.
class Topic(models.Model):
    title = models.CharField(max_length=200)
    description = models.CharField(max_length=10000)

