
#List of URLS for Home app
from django.conf.urls import url
from . import views
from django.conf import settings

app_name = 'home'

urlpatterns = [
    url(r'^$', views.index, name='index'), #
    url(r'about/', views.about, name = 'about'), # /about
    url(r'gallery/', views.gallery, name = 'gallery'), #/gallery
    url(r'jobs', views.jobs, name= 'jobs'), #/jobs
    url(r'contact', views.contact, name= 'contact'), #/contact
    url(r'ourteam', views.team, name = 'team'),
    url(r'login', views.login_user, name = 'login'),
    url(r'logout', views.logout_user, name = 'logout'),
]

