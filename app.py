"""Simple flask app which print message."""
from flask import Flask
app = Flask(__name__)

#some modify
@app.route('/')
def hello_world():
    """Function which serve '/'"""
    return 'Hell0, world! 1'


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080, debug=False)
