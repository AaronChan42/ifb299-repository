from django import forms
from .models import Instrument, Feedback, Teacher


class InstrumentForm(forms.ModelForm):

    instrument_type = forms.ModelChoiceField(label= "Instrument Type", queryset=Instrument.objects.all())

    class Meta:
        model = Instrument
        fields = ('instrument_type',) #get type, costofHire and purchaseCost {{THIS ONE IS COMPlEX DO IN SPRINT 2}}


class FeedbackForm(forms.ModelForm):
    teacher = forms.ModelChoiceField(label = "Teacher", queryset=Teacher.objects.all())

    studentFeedback = forms.CharField(label= "Feedback", widget= forms.Textarea(attrs={
        'class': 'form-control',
        'rows': '5'
    }) )

    class Meta:
        model = Feedback
        fields = ('teacher', 'studentFeedback')