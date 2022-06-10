from flask import Flask, jsonify

app = Flask(__name__)


@app.get('/')
def index():
    return 'Hello World!'


@app.route('/hello')
def hello():
    return jsonify({'message': 'Hello World!'})


if __name__ == '__main__':
    app.run(debug=True)
