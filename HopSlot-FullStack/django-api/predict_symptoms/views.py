import joblib
from rest_framework.response import Response
from rest_framework.views import APIView
from predict_symptoms.apps import PredictSymptomsConfig
from predict_symptoms.services.data_transformation_service import DataTransformationService


# Create your views here.
class PredictSymptomsAPIView(APIView):
    model = joblib.load(PredictSymptomsConfig.model_path)
    encoder = joblib.load(PredictSymptomsConfig.models_folder / "evidence_mb_encoder.pkl")
    dataTransformation = DataTransformationService()

    def post(self, request, *args, **kwargs):
        predictions = []
        for appointment in request.data:
            evidence = self.dataTransformation.transformAPIRequest(appointment)
            print(evidence)
            pathology = self.model.predict(self.encoder.transform([evidence]))
            severity = self.dataTransformation.mapPathologyToSeverity(pathology)
            predictions.append({
                'appointmentId': appointment['appointmentId'],
                'pathology': pathology[0],
                'severity': severity,
            })
        return Response(predictions)
