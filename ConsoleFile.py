import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return f"Hello from {os.getenv('APP_NAME', 'default-app')}!"

app.run(host="0.0.0.0", port=8080)
