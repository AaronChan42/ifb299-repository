from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request):
    return render(request, 'home/index.html') #add context argument/parameter if you are grabbing something from db

def about(request):
    return render(request, 'home/about.html')
