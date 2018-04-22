
from django import forms
from .models import Message

class PostMessage(forms.ModelForm):
    firstName = forms.CharField(label = "First Name", widget = forms.TextInput(
        attrs={
            'class': 'form-control'
        }
    ))

    lastName = forms.CharField(label = 'Surname', widget= forms.TextInput(
        attrs={
            'class' : 'form-control'
        }
    ))

    email = forms.EmailField(label = 'Email', widget= forms.EmailInput(
        attrs={
            'class' : 'form-control'
        }
    ))
    phoneNumber = forms.CharField(label= "Phone Number",  widget= forms.TextInput(
        attrs={
            'class' : 'form-control'
        }
    ))
    messageContent = forms.CharField(label = "Message", widget=forms.Textarea (
        attrs= {
            'class' : 'form-control',
            'rows' : '5',
        }
    ) )

    class Meta:
        model = Message
        fields = ('firstName', 'lastName', 'email', 'phoneNumber', 'messageContent')