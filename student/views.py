from django.shortcuts import render, redirect
from django.core.exceptions import PermissionDenied
from teacher.models import Song
from django.views.generic import ListView
from .forms import InstrumentForm, FeedbackForm, BookingForm
from django.contrib import messages
from django.contrib.auth.models import User

# Create your views here.
def index(request, user_id):
    if request.user.is_authenticated and not request.user.is_staff:
        user = User.objects.get(pk=user_id) #get the user_id of who logged in
        return render(request, 'student/index.html', {'user': user})
    else:
        raise PermissionDenied

def instrument(request, user_id):
    form = InstrumentForm()
    user = User.objects.get(pk=user_id)  # get the user_id of who logged in

    if request.method == "POST":
        form = InstrumentForm(request.POST or None)

        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            messages.success(request, 'Your request has been sent! Please wait for admin to process your request. You will be notified via email')
            return redirect('student:instrument')

    return render(request, 'student/instrument.html', {'form': form, 'user': user})


def feedback(request, user_id):
    form = FeedbackForm()
    user = User.objects.get(pk=user_id)  # get the user_id of who logged in

    if request.method == "POST":
        form = FeedbackForm(request.POST or None)

        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            messages.success(request, 'Your Message has been Sent!')
            return redirect('student:feedback')

    return render(request, 'student/feedback.html', {'form': form, 'user': user})

def booking(request, user_id):
    form = BookingForm()
    user = User.objects.get(pk=user_id)  # get the user_id of who logged in

    if request.method == "POST":
        form = BookingForm(request.POST or None)

        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            messages.success(request, 'Your request has been sent! Please wait for admin to process your request. You will be notified via email')
            return redirect('student:feedback')

    return render(request, 'student/booking.html', {'form': form, 'user': user})

class DisplayMusic(ListView):
    #To display songs
    template_name = "student/my_music.html"
    context_object_name = "all_songs"

    def get_queryset(self):
        return Song.objects.all()


