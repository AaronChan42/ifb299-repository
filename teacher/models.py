from django.db import models
from home.models import Lesson, Student

# Create your models here.
class Song(models.Model):
    song_title = models.CharField(max_length=250)
    song_file = models.FileField(default='')


    def __str__(self): #Display teacher ID, instrument played
        return self.song_title