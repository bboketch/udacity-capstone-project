from flask import Flask
# from flask import request
# from flask import render_template

app=Flask(__name__,template_folder='templates')

# @app.route("/")
# def home():
#     return render_template("home.html")


@app.route("/")
def hello():
    return "Hello this is Beth's capstone project!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True)