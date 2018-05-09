
#List of URLS for Home app
from django.conf.urls import url
from . import views

app_name = 'teacher'

urlpatterns = [
    url(r'^$', views.index, name='index'), #change back
    url(r'^add_music/', views.add_music, name= "add_music"), #see Viberr Detail page to delete music
    url(r'^delete_music/(?P<song_id>\d+)/$', views.delete_music, name= "delete_music"),
    url(r'^manage_music/', views.DisplayMusic.as_view(), name= "manage_music"),
    url(r'^timetable/', views.timetable, name= "timetable"),
    url(r'^manage_lessons/', views.manage_lessons, name="manage_lessons"),

]
