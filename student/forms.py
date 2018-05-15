from django import forms
from .models import Instrument, Feedback, Teacher, InstrumentRequest, BookingRequest, Lesson, Student


class InstrumentForm(forms.ModelForm):
    CONDITIONS = {
        ('Hire', 'Hire'),
        ('Buy', 'Buy')
    }

    student = forms.CharField(widget=forms.HiddenInput()) #DO THIS TOMORROW -hidden input field with value

    instrument = forms.ModelChoiceField(label="Instrument", queryset=Instrument.objects.all(), widget=forms.Select(attrs={
        'class': 'form-control'
    }))

    hire = forms.ChoiceField(label="Hire/Buy", choices= CONDITIONS, widget=forms.Select(attrs={
        'class': 'form-control'
    }))

    class Meta:
        model = InstrumentRequest
        fields = ('instrument', 'hire', 'student')

class FeedbackForm(forms.ModelForm):
    teacher = forms.ModelChoiceField(label = "Teacher", queryset=Teacher.objects.all(), widget=forms.Select(attrs={
        'class': 'form-control'
    }))

    studentFeedback = forms.CharField(label= "Feedback", widget= forms.Textarea(attrs={
        'class': 'form-control',
        'rows': '5'
    }) )

    class Meta:
        model = Feedback
        fields = ('teacher', 'studentFeedback')

class BookingForm(forms.ModelForm):
    student = forms.CharField(widget=forms.TextInput(attrs={
        'class': 'form-control'
    }))  # DO THIS TOMORROW

    lesson = forms.ModelChoiceField(label="Lesson", queryset=Lesson.objects.all(), widget=forms.Select(attrs={
        'class': 'form-control'
    }))
    class Meta:
        model = BookingRequest
        fields = ('student', 'lesson')