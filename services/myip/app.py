import socket

from flask import Flask


app = Flask(__name__)

@app.route("/")
def index():
    return socket.gethostbyname(socket.gethostname())

@app.route("/health")
def health():
    return "ok"
