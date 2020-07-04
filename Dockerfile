FROM python:3.7.3-stretch

WORKDIR /code

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt --quiet

COPY . .

EXPOSE 80

CMD ["python" , "app.py"]


