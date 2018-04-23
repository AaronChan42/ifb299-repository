from django.shortcuts import render
from django.core.exceptions import PermissionDenied

# Create your views here.
def index(request):
    if request.user.is_authenticated and not request.user.is_staff:
        return render(request, 'student/index.html') #add context argument/parameter if you are grabbing something from db
    else:
        raise PermissionDenied