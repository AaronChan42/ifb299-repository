from django.contrib import admin
from .models import *
# Register your models here.

admin.site.register(Teacher)
admin.site.register(Student)
admin.site.register(Lesson)
admin.site.register(Instrument)
admin.site.register(TeacherQualification)
admin.site.register(TeacherInstrument)
admin.site.register(TeacherLanguage)
admin.site.register(TeacherPhone)
admin.site.register(StudentPhone)
admin.site.register(Parent)
admin.site.register(ParentPhone)
admin.site.register(Message)