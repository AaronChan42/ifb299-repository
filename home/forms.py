
from django import forms
from .models import Message, Applicant
from django.contrib.auth.models import User
from django.core.validators import RegexValidator

#Phone Number Validator
phone_val = RegexValidator(regex=r'^\({0,1}((0|\+61)(2|4|3|7|8)){0,1}\){0,1}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{1}(\ |-){0,1}[0-9]{3}$'
                           , message="Phone number must be entered in format: '0491570110'")

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
    phoneNumber = forms.CharField(label= "Phone Number", validators=[phone_val],widget= forms.TextInput(
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

class JobForm(forms.ModelForm):

    firstName = forms.CharField(label= "First Name", widget=forms.TextInput(
      attrs={
          'class': 'form-control'
      }
    ))

    lastName = forms.CharField(label='Surname', widget=forms.TextInput(
        attrs={
            'class': 'form-control'
        }
    ))

    email = forms.EmailField(label='Email', widget=forms.EmailInput(
        attrs={
            'class': 'form-control'
        }
    ))
    phoneNumber = forms.CharField(label="Phone Number", validators=[phone_val],widget=forms.TextInput(
        attrs={
            'class': 'form-control'
        }
    ))

    contract = forms.FileField(label="Signed Contract", widget=forms.FileInput(attrs={
        'class': 'form-control-file'
    }))

    resume = forms.FileField(label="Resume/CV", widget=forms.FileInput(attrs={
        'class': 'form-control-file'
    }))

    class Meta:
        model = Applicant
        fields = ('firstName', 'lastName', 'email', 'phoneNumber', 'contract', 'resume')

