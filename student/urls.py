
#List of URLS for Home app
from django.conf.urls import url
from . import views

app_name = 'student'

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^instrument/', views.instrument, name='instrument'),
    url(r'^feedback/', views.feedback, name='feedback'),
    url(r'^my_music', views.DisplayMusic.as_view(), name='my_music'),
    url(r'^booking', views.booking, name ='booking'),
]