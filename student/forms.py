from django import forms
from .models import Instrument, Feedback, Teacher, InstrumentRequest, BookingRequest, Lesson, TeacherLanguage


class InstrumentForm(forms.ModelForm):
    CONDITIONS = {
        ('Hire', 'Hire'),
        ('Buy', 'Buy')
    }

    user = forms.CharField(label="Username", widget=forms.TextInput(attrs={
        'class': 'form-control'
    }))

    instrument = forms.ModelChoiceField(label="Instrument", queryset=Instrument.objects.all(), widget=forms.Select(attrs={
        'class': 'form-control'
    }))

    hire = forms.ChoiceField(label="Hire/Buy", choices= CONDITIONS, widget=forms.Select(attrs={
        'class': 'form-control'
    }))

    class Meta:
        model = InstrumentRequest
        fields = ('user', 'instrument', 'hire' )

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
    user = forms.CharField(label="Username", widget=forms.TextInput(attrs={
        'class': 'form-control'
    }))

    lesson = forms.ModelChoiceField(label="Lesson", queryset=Lesson.objects.all(), widget=forms.Select(attrs={
        'class': 'form-control'
    }))

    prefLang = forms.ModelChoiceField(label="Preferred Language (optional)",initial=0, queryset=TeacherLanguage.objects.all(),
                                      widget=forms.Select(attrs={
                                          'class': 'form-control'
                                      }))

    class Meta:
        model = BookingRequest
        fields = ('user', 'lesson', 'prefLang')