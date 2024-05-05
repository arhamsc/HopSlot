from django.apps import AppConfig
import joblib
from pathlib import Path
from django.conf import settings


class PredictSymptomsConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'predict_symptoms'

    model = None
    model_path = Path(settings.BASE_DIR) / Path('predict_symptoms/trained_models/model.pkl')

    def ready(self):
        self.model = joblib.load(self.model_path)
