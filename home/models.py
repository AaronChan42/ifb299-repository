from django.db import models
from django.contrib.auth.models import User
# Create your models here.
class Teacher(models.Model):
    GENDERS = (
        ( 'M', 'Male'),
        ('F', 'Female')) # Choices for gender, first entry is what goes into DB, second is what is displayed
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True, blank=True)
    firstName = models.CharField(max_length=30)
    lastName = models.CharField(max_length=30)
    gender = models.CharField(max_length=1, choices=GENDERS)
    email = models.EmailField(max_length=75)
    DoB = models.DateField()
    facebookID = models.IntegerField()

    def __str__(self): # Displays firstName + lastName
        return self.firstName + ' - ' + self.lastName

class Student(models.Model):
    GENDERS = (
    ('M', 'Male'),
    ('F', 'Female'))

    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True, blank=True)
    firstName = models.CharField(max_length=30)
    lastName = models.CharField(max_length=30)
    gender = models.CharField(max_length=1, choices=GENDERS)
    DoB = models.DateField()
    address = models.TextField()
    facebookID = models.IntegerField()


    def __str__(self): # Displays firstName + lastName
        return self.firstName + ' - ' + self.lastName


class Lesson(models.Model):
    DURATION_1 = 30
    DURATION_2 = 60

    DURATIONS = (
        (DURATION_1, "30min"),
        (DURATION_2, "60min")
    )

    DAYS = (
        ('MON', 'Monday'),
        ('TUE', 'Tuesday'),
        ('WED', 'Wednesday'),
        ('THU', 'Thursday'),
        ('FRI', 'Friday'),
    )

    TYPES = (
        ('Piano lesson', 'Piano lesson'),
        ('Drum lesson', 'Drum lesson'),
        ('Guitar lesson', 'Guitar lesson'),
    )

    ROOMS =(
        ('Room 101', 'Room 101'),
        ('Room 102', 'Room 102'),
        ('Room 103', 'Room 103'),
    )

    TIMES = (
        ('8:00', '8:00'),
        ('8:30', '8:30'),
        ('9:00', '9:00'),
        ('9:30', '9:30'),
        ('10:00', '10:00'),
        ('10:30', '10:30'),
        ('11:00', '11:00'),
        ('11:30', '11:30'),
        ('12:00', '12:00'),
        ('12:30', '12:30'),
        ('13:00', '13:00'),
        ('13:30', '13:30'),
        ('14:00', '14:00'),
        ('14:30', '14:30'),
        ('15:00', '15:00'),
        ('15:30', '15:30'),
        ('16:00', '16:00'),
        ('16:30', '16:30'),
        ('17:00', '17:00'),
        ('17:30', '17:30'),
        ('18:00', '18:00'),
        ('18:30', '18:30'),
        ('19:00', '19:00'),
        ('19:30', '19:30'),
        ('20:00', '20:00'),
    )

    type = models.CharField(choices=TYPES, max_length=50, null=True, blank=True)
    room = models.CharField(choices=ROOMS, max_length=50, null=True, blank=True)
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    day = models.CharField(choices=DAYS, max_length=3, null=True, blank=True)
    time = models.CharField(choices=TIMES, max_length=50, null=True, blank=True)
    duration = models.IntegerField(choices=DURATIONS)
    students = models.ManyToManyField(Student)# students can have many lessons vice versa

    def __str__(self):
        return  self.type + ' ' + str(self.day) + ' - ' + str(self.time)

class Parent (models.Model):
    firstName = models.CharField(max_length=30)
    lastName = models.CharField(max_length=30)
    students = models.ManyToManyField(Student)#Parents can have many children vice versa

    def __str__(self): #Displays firstName, lastName
        return self.firstName + ' - ' + self.lastName


class TeacherQualification (models.Model):
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    qualification = models.CharField(max_length=50)

    def __str__(self): # Display Teacher ID + Qualification
        return self.teacher + ' - ' + self.qualification

class TeacherInstrument (models.Model):
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    instrumentPlayed = models.CharField(max_length=50)

    def __str__(self): #Display teacher ID, instrument played
        return self.teacher + ' - ' + self.instrumentPlayed

class TeacherLanguage (models.Model): #Display Teacher ID, language spoken
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    languageSpoken = models.CharField(max_length=50)

    def __str__(self):
        return self.languageSpoken

class TeacherPhone (models.Model):
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    phoneNumber = models.CharField(max_length=10) #without country code e.g. +61

    def __str__(self):
        return self.teacher + ' - ' + self.phoneNumber

class StudentPhone (models.Model):
    student = models.ForeignKey(Student, on_delete=models.CASCADE)
    phoneNumber = models.CharField(max_length=10)

    def __str__(self):
        return self.student + ' - ' + self.phoneNumber

class ParentPhone (models.Model):
    parent = models.ForeignKey(Parent, on_delete=models.CASCADE)
    phoneNumber = models.CharField(max_length=10)

    def __str__(self):
        return self.parent + ' - ' + self.phoneNumber

class Message (models.Model):
    firstName = models.CharField(max_length=30)
    lastName = models.CharField(max_length=30)
    email = models.EmailField(max_length=75)
    phoneNumber = models.CharField(max_length=10)
    messageContent =  models.TextField()

    def __str__(self):
        return self.firstName + ' ' + self.lastName + ' - ' + self.messageContent

class Applicant (models.Model):
    firstName = models.CharField(max_length=30)
    lastName = models.CharField(max_length=30)
    email = models.EmailField(max_length=75)
    phoneNumber = models.CharField(max_length=10)
    contract = models.FileField(default='')
    resume = models.FileField(default='')

    def __str__(self):
        return self.firstName + ' ' + self.lastName