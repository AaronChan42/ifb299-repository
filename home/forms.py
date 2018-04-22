
from django import forms
from .models import Message
from django.contrib.auth.models import User

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

class UserForm(forms.ModelForm):

    username = forms.CharField(label = "Username", widget=forms.TextInput(
        attrs={
            'class': 'form-control'
        }
    ))

    password = forms.CharField(label = "Password", widget=forms.PasswordInput(
        attrs={
            'class': 'form-control'
        }
    ))

    class Meta:
        model = User
        fields = ('username', 'password')