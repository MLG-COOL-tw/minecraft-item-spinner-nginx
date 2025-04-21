FROM python:3.11.12-alpine3.21

WORKDIR /app

ADD . /app

RUN pip install --upgrade pip && \
    pip install -r requirements.txt
    
EXPOSE 5003

CMD ["python", "main.py"]