from django.db import models
from django.contrib.auth.models import User
from home.models import *

# Create your models here.
class Instrument(models.Model):
    CONDITIONS = (
        ('N', 'New'),
        ('E', 'Excellent'),
        ('G', 'Good'),
        ('R', 'Repair'),
        ('D', 'Discard')
    )

    student = models.ForeignKey(Student, on_delete=models.CASCADE, null=True, blank=True) #Instruments don't have to be assigned to a student
    instrument_name = models.CharField(max_length=50)
    costofHire = models.IntegerField()
    purchaseCost = models.IntegerField()
    condition = models.CharField(max_length=1, choices=CONDITIONS)

    def __str__(self): #Displays instrument ID + type + condition
        return self.instrument_name


class InstrumentRequest(models.Model): #for now
    CONDITIONS = {
        ('Hire','Hire'),
        ('Buy','Buy')
    }

    APPROVAL = {
        ('P', 'Pending'),
        ('A', 'Approved')
    }

    user = models.CharField(max_length=40)
    instrument = models.ForeignKey(Instrument, on_delete=models.CASCADE)
    hire = models.CharField(max_length=4, choices=CONDITIONS)
    approval = models.CharField(max_length=8, choices=APPROVAL, default='P')

    def __str__(self):
        return str(self.user) + ' ' + str(self.instrument) + ' REQUEST ' + self.approval

class Feedback(models.Model):
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    studentFeedback = models.TextField(null=True, blank=False)

    def __str__(self): #Display teacher name
        return str(self.teacher)

class BookingRequest(models.Model):
    APPROVAL = {
        ('P', 'Pending'),
        ('A', 'Approved')
    }

    user = models.CharField(max_length=40)
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
    prefLang = models.CharField(max_length=40)
    approval = models.CharField(max_length=8, choices=APPROVAL, default='P')

    def __str__(self):
        return str(self.user) + ' ' + str(self.lesson) + ' REQUEST ' + self.approval