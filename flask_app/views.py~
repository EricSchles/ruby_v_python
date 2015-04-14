from flask import render_template, request
from flask_app import app

@app.route("/",methods=["GET","POST"])
@app.route("/<param>",methods=["GET","POST"])
def index(param=None):
    if param:
        return render_template("index.html",param=param)
    return render_template("index.html")
    
