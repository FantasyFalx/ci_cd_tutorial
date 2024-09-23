from flask import Flask


app = Flask(__name__)

# Basic test route for hello world
@app.route("/")
def hello_world():
    return "<p>Hello World</p>"


# If name == main 

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
