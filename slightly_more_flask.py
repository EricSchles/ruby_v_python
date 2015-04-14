from flask import Flask

app = Flask(__name__)


@app.route("/<name>",methods=["GET","POST"])
def index(name=None):
    return "Hello "+ name

app.run(debug=True)
