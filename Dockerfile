FROM python:3.8-slim-buster

WORKDIR /app

COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]