
#List of URLS for Home app
from django.conf.urls import url
from . import views

app_name = 'home'

urlpatterns = [
    url(r'^$', views.index, name='index'), # /home/
    url(r'about/', views.about, name = 'about'), # /home/about
]

