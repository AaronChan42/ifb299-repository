
#List of URLS for Home app
from django.conf.urls import url
from . import views

app_name = 'student'

urlpatterns = [
    url(r'^(?P<user_id>\d+)/$', views.index, name='index'),
    url(r'^(?P<user_id>\d+)/instrument/$', views.instrument, name='instrument'),
    url(r'^(?P<user_id>\d+)/feedback/$', views.feedback, name='feedback'),
    url(r'^(?P<user_id>\d+)/my_music$', views.DisplayMusic.as_view(), name='my_music'),
    url(r'^(?P<user_id>\d+)/booking$', views.booking, name ='booking'),
]