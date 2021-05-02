FROM python:3.9.4-alpine

# define work directory
WORKDIR /api

# avoid writing pyc files
ENV PYTHONDONTWRITEBYTECODE 1
# avoid buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

# install django and postgres dependencies
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

# install project requirements
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy project files
COPY . .

CMD ["sh", "-c", "python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:$PORT"]