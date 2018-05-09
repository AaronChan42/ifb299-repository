from django import forms
from .models import Song
from django.core.validators import FileExtensionValidator


class SongForm(forms.ModelForm):
    song_title = forms.CharField(label = "Song Title", widget = forms.TextInput(attrs={
        'class': 'form-control'
    }
    ))

    song_file = forms.FileField(label = "Song File", validators=[FileExtensionValidator(['mp3', 'ogg', 'wav'])],
        widget= forms.FileInput(attrs={
        'class': 'form-control-file'
    }))

    class Meta:
        model = Song
        fields = ('song_title', 'song_file')