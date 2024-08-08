FROM python:3.12.4-slim
LABEL authors="volha10"

ENV PYTHONUNBUFFERED 1

WORKDIR /code/
COPY requirements.txt /code/

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install -r requirements.txt

COPY . /code/

RUN chmod +x entrypoint.sh

EXPOSE 8000

CMD ["/code/entrypoint.sh"]
