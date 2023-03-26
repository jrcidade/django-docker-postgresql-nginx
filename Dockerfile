FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update

COPY . .

CMD ["gunicorn", "--config", "gunicorn-cfg.py", "core.wsgi"]