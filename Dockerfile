FROM python:stretch

COPY . /FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS
WORKDIR /app

RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]