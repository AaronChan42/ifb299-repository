
#List of URLS for Home app
from django.conf.urls import url
from . import views

app_name = 'teacher'

urlpatterns = [
    url(r'^$', views.index, name='index'),
]