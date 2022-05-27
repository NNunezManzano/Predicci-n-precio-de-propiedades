FROM jupyter/scipy-notebook:6b49f3337709

WORKDIR /app

COPY a_predecir.csv /app/a_predecir.csv

COPY TP_individual_docker.ipynb /app/TP_individual_docker.ipynb
