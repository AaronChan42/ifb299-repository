from django.contrib import admin
from .models import *

# Register your models here.
admin.site.register(Instrument)
admin.site.register(InstrumentRequest)
admin.site.register(BookingRequest)
admin.site.register(Feedback)