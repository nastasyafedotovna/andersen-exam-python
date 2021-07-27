"""Simple flask app which print message"""
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    """Function which serve '/'"""
    return 'ddHello, world 1!'


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=False)
