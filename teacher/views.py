from django.contrib.auth.models import User
from django.shortcuts import render, redirect, get_object_or_404
from django.core.exceptions import PermissionDenied
from .forms import SongForm
from .models import Song, Lesson
from django.contrib import messages
from django.views.generic import ListView


# Create your views here.
def index(request, user_id):
    if request.user.is_authenticated and request.user.is_staff:
        user = User.objects.get(pk=user_id)  # get the user object of who logged in
        return render(request, 'teacher/index.html', {'user': user})
    else:
        raise PermissionDenied

def add_music(request):
    form = SongForm()

    if request.method == "POST":
        form = SongForm(request.POST or None, request.FILES or None)

        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            messages.success(request, 'Song has been added!')
            return redirect('teacher:add_music')

    return render(request, 'teacher/add_music.html', {"form": form})

def delete_music(request, song_id):
    song = Song.objects.get(pk=song_id)
    song.delete()
    return render(request, 'teacher/manage_music.html', {"song": song})

#NEED TO ADD PART TO REFRESH TABLE AFTER DELETING + ADD USER ID TO GENERIC VIEWS

class DisplayMusic(ListView):
    #To display songs in a table
    template_name = "teacher/manage_music.html"
    context_object_name = "all_songs"

    def get_queryset(self):
        return Song.objects.all()

def timetable(request, user_id):
    user = User.objects.get(pk=user_id)  # get the user_id of who logged in
    return render(request, 'teacher/timetable.html', {'user': user})

def manage_lessons(request, user_id):
    user = User.objects.get(pk=user_id)  # get the user_id of who logged in
    lessons = Lesson.objects.all()
    return render(request, 'teacher/manage_lessons.html', {'user': user, 'lessons': lessons})