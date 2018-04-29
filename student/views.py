from django.shortcuts import render, redirect
from django.core.exceptions import PermissionDenied
from teacher.models import Song
from django.views.generic import ListView
from .forms import InstrumentForm, FeedbackForm
from django.contrib import messages


# Create your views here.
def index(request):
    if request.user.is_authenticated and not request.user.is_staff:
        return render(request, 'student/index.html') #add context argument/parameter if you are grabbing something from db
    else:
        raise PermissionDenied

def instrument(request):
    return render(request, 'student/instrument.html')


def feedback(request):
    form = FeedbackForm()

    if request.method == "POST":
        form = FeedbackForm(request.POST or None)

        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            messages.success(request, 'Your Message has been Sent!')
            return redirect('student:feedback')

    return render(request, 'student/feedback.html', {'form': form})

def booking(request):
    return render(request, 'student/booking.html')

class DisplayMusic(ListView):
    #To display songs
    template_name = "student/my_music.html"
    context_object_name = "all_songs"

    def get_queryset(self):
        return Song.objects.all()


