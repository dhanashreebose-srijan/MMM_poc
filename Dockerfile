FROM python:3.9-slim-buster

RUN apt-get update
RUN python -m pip install --upgrade pip

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 8502

COPY . .

CMD ["streamlit", "run","app.py","--server.port=8502"]
