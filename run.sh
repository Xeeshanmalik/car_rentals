#!/bin/bash
cd "$(dirname "$0")"
docker build -t car_rental .
if [ $? -eq 0 ]; then
        echo Docker Image Successfully Created
else
        echo Docker Image Creation Fail
fi
docker build -t car_rental .
if [ $? -eq 0 ]; then
        echo Docker Container Successfully Created from Docker Image
else
        echo Docker Container Fail to Create
fi
docker run --name car_rental -p 8880:8880 -d car_rental

docker cp car_rental.ipynb car_rental:/tensorflow/models/research/object_detection
docker cp rentals.csv car_rental:/tensorflow/models/research/object_detection
docker cp forecast_model.ipynb car_rental:/tensorflow/models/research/object_detection

python -mwebbrowser http://localhost:8880/notebooks/car_rental.ipynb
                                                                              
