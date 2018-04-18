from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'student/index.html') #add context argument/parameter if you are grabbing something from db