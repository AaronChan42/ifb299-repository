from django.shortcuts import render, redirect
from django.http import HttpResponse
from .forms import PostMessage


# Create your views here.
def index(request):
    return render(request, 'home/index.html') #add context argument/parameter if you are grabbing something from db

def about(request):
    return render(request, 'home/about.html')

def gallery(request):
    return render(request, 'home/gallery.html')

def jobs(request):
    return render(request, 'home/jobs.html')

def contact(request):
    form = PostMessage()

    if request.method == "POST":
        form = PostMessage(request.POST or None)

        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            return redirect('home:contact')

    return render(request, 'home/contact.html', {'form': form})

def team(request):
    return render(request, 'home/team.html')