FROM python:3.8.9-alpine as back-stage
WORKDIR /app
ENV PYTHONUNBUFFERED=1
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev \
    && apk add --update --no-cache libxslt-dev
COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . .
CMD ["python", "manage.py", "runserver", "8000"]
