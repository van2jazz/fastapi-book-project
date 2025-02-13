FROM python:3.13.1

WORKDIR /app
COPY . /app

RUN pip3 install -r requirements.txt --no-cache-dir

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
