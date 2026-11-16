FROM python:3.12-slim

WORKDIR /app

# Сначала зависимости: пока requirements.txt не меняется, слой берётся из кэша
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 3478

# Порт передаёт платформа в переменной PORT; без неё — 3478.
# exec — чтобы gunicorn стал главным процессом и сам получал сигнал остановки
CMD exec gunicorn --bind 0.0.0.0:${PORT:-3478} app:app
