import os

from flask import Flask, jsonify


def create_app(test_config=None):
    app = Flask(__name__, instance_relative_config=True)

    if test_config is None:
        app.config.from_mapping(
            SECRET_KEY=os.environ.get('SECRET_KEY')
        )
    else:
        app.config.from_mapping(test_config)

    @app.get('/')
    def index():
        return 'Hello World!'

    @app.route('/hello')
    def hello():
        return jsonify({'message': 'Hello World!'})

    return app
