from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("home.html")


@app.route('/hello')
def hello():
    return 'Hello, World!'

if __name__ == "__app__":
    app.run(host='0.0.0.0', port=80, debug=True)