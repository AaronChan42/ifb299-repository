from django.contrib.auth import authenticate, login
from django.contrib.auth.views import logout
from django.shortcuts import render, redirect
from .forms import PostMessage, UserForm
from django.core.exceptions import PermissionDenied

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

def login_user(request):
    form = UserForm()

    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)

        #Check if User exists
        if user is not None:
            if user.is_active: # Check if active
                if user.is_staff and not user.is_superuser: #If staff member... redirect to teacher homepage
                    login(request, user)
                    return redirect('/teacher') #will need to update if we want to make it for multiple users

                elif user.is_superuser: #If admin... redirect to admin page
                    login(request, user)
                    return redirect('admin:index')

                else: #If student... redirect to student homepage
                    login(request, user)
                    return redirect('/student')
        else:
            return render(request, 'home/login.html', {'form': form, 'invalid': True})

    return render(request, 'home/login.html', {'form': form})

def logout_user(request):
    if request.user.is_authenticated:
        logout(request)
        return render(request, 'home/logout.html')
    else:
        raise PermissionDenied

# Student username: student
# password = music123

# Teacher username: teacher
# password = song1234