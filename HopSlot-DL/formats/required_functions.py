from pathlib import Path
import pandas as pd
import json

def loadModelAndSupports(sourceDir: Path):
    ### Model load logic
    model = "a"
    return model

def transformAPIRequest(request):
    evidences = []

    request
    selected_columns = ["question_en", "name", "value_meaning" ,"data_type"]
    df = pd.read_json("../final/release_evidences.json").T
    df = df[selected_columns]
    data_dict = df.to_dict(orient='records')

    search_key
    res = next(item for item in data_dict if search_key in item["question_en"])
    if res["data_type"] == 'B':
        answer = res['name']
    elif res["data_type"] == "M":
        print(res["value_meaning"])
        value_name = input("Enter Value number:")
        value_meaning = [key for key, val in res["value_meaning"].items() if value_name in val.values()]
        answer = res["name"]+"_@_"+value_meaning[0]
    else:
        value_meaning = input("Enter a range(1 to 10):")
        answer = res["name"]+"_@_"+value_meaning

    return evidences # Your model inputs which will be used for prediction

def transformToAPIResponse(predictions):
    return predictions # In the way mentions in ./django_output_format.json
