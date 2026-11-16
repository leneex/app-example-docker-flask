from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello world"

if __name__ == "__main__":
    # Локальный запуск без Docker: порт из PORT, без неё — 3478
    port = int(os.getenv("PORT", "3478"))
    app.run(host="0.0.0.0", port=port)
