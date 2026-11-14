# Dockerfile + Flask

Пример приложения Flask, которое можно развернуть с помощью Dockerfile без настройки.

## <a name="dev"></a>Локальный запуск проекта

```bash
# сборка docker образа
docker build -t dockerfile-flask-app:latest .

# запуск контейнера на порту 3478
docker run -d -p 3478:3478 dockerfile-flask-app
```
