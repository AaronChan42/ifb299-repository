from django.db import models
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

    student = models.ForeignKey(Student, on_delete=models.CASCADE)
    type = models.CharField(max_length=50)
    costofHire = models.IntegerField()
    purchaseCost = models.IntegerField()
    condition = models.CharField(max_length=1, choices=CONDITIONS)

    def __str__(self): #Displays instrument ID + type + condition
        return self.type + ' - ' + self.condition



class Feedback(models.Model):

    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    studentFeedback = models.TextField(null=True, blank=False)

    def __str__(self): #Display teacher name
        return str(self.teacher)