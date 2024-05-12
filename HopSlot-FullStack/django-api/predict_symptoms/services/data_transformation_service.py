import pandas as pd
from predict_symptoms.apps import PredictSymptomsConfig


class DataTransformationService:
    def __init__(self):
        self.evidencesDF = pd.read_json(PredictSymptomsConfig.models_folder / "release_evidences.json").T
        self.conditionsDF = pd.read_json(PredictSymptomsConfig.models_folder / "release_conditions.json").T

    def transformAPIRequest(self, appointment):
        evidences = []
        for symptom in appointment["symptoms"]:
            if symptom["type"] == "B":
                evidences.append(symptom["name"])
            elif symptom["type"] == "M":
                for value in symptom["values"]:
                    evidences.append(symptom["name"] + "_@_" + value)
            else:
                value_meaning = symptom["values"]
                evidences.append(symptom["name"] + "_@_" + value_meaning[0])

        return evidences

    def mapPathologyToSeverity(self, pathology):

        selected_columns = ["condition_name", "severity"]
        df = self.conditionsDF[selected_columns]
        data_dict = df.to_dict(orient="records")
        return next(item for item in data_dict if item["condition_name"] == pathology)[
            "severity"
        ]
