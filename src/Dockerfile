FROM python:3.12.4-slim
LABEL authors="volha10"

COPY requirements.txt /code/

WORKDIR /code/

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install -r requirements.txt

COPY . /code/

RUN chmod +x entrypoint.sh

CMD ["/code/entrypoint.sh"]
