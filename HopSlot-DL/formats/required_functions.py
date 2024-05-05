from pathlib import Path
import pandas as pd
import json

"""
1. Model is already loaded at django startup, it will be in some directory.

2. API Request (From Node) -> /predict -> Controller -> Parse my json (makes it into python format) -> predict(input) -> give predictions -> send to Node as Response
"""
# model = loadModelAndSupports()


def predict(appointmentBatch: list):
    predictions = []
    for appointment in appointmentBatch:
        transformedSymptoms = transformAPIRequest(appointment)
        pathology = model.predict(transformedSymptoms)
        severity = mapPathologyToSeverity(pathology)
        severity = 1
        predictions.append(
            {"appointmentId": appointment.get("appointmentId"), "severity": severity}
        )
    return predictions
    # Send this as a response


# This function will be called during startup
# Output will be assigned to a variable called model which will be imported to other places.
def loadModelAndSupports(sourceDir: Path):
    ### Model load logic
    model = "a"
    return model


def transformAPIRequest(appointment):
    evidences = []

    selected_columns = ["question_en", "name", "value_meaning", "data_type"]
    df = pd.read_json("../datasets/final/release_evidences.json").T
    df = df[selected_columns]
    data_dict = df.to_dict(orient="records")

    for symptom in appointment["symptoms"]:
        search_key = symptom["name"]
        res = next(item for item in data_dict if search_key in item["question_en"])
        if res["data_type"] == "B":
            evidences.append(res["name"])
        elif res["data_type"] == "M":
            value_name = symptom["values"]
            value_meaning = [
                key
                for key, val in res["value_meaning"].items()
                if value_name in val.values()
            ]
            evidences.append(res["name"] + "_@_" + value_meaning[0])
        else:
            value_meaning = symptom["values"]
            evidences.append(res["name"] + "_@_" + value_meaning)

    return evidences  # Your model inputs which will be used for prediction


def mapPathologyToSeverity(pathology):
    df = pd.read_json("../datasets/final/release_conditions.json").T
    selected_columns = ["condition_name", "severity"]
    df = df[selected_columns]
    data_dict = df.to_dict(orient="records")
    return next(item for item in data_dict if item["condition_name"] == pathology)[
        "severity"
    ]
