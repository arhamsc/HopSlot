from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.views import APIView
from predict_symptoms.apps import PredictSymptomsConfig

# Create your views here.
class PredictSymptomsAPIView(APIView):
    def get(self, request, *args, **kwargs):
        model = PredictSymptomsConfig.model
        return Response({"test": "asasd"})
