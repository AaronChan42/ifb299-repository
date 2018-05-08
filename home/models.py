from django.db import models

# Create your models here.
class Teacher(models.Model):
    GENDERS = (
        ( 'M', 'Male'),
        ('F', 'Female')) # Choices for gender, first entry is what goes into DB, second is what is displayed

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

    firstName = models.CharField(max_length=30)
    lastName = models.CharField(max_length=30)
    gender = models.CharField(max_length=1, choices=GENDERS)
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
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

    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    startDate = models.DateField()
    endDate = models.DateField()
    duration = models.IntegerField(choices=DURATIONS)
    students = models.ManyToManyField(Student)# students can have many lessons vice versa

    def __str__(self): # Displays firstName + lastName
        return self.startDate + ' - ' + self.teacher

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
        return self.teacher + ' - ' + self.languageSpoken

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