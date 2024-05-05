from django.urls import path
from . import views
from django.conf import settings
from .views import PredictSymptomsAPIView

urlpatterns = [
    path('', PredictSymptomsAPIView.as_view()),
]
