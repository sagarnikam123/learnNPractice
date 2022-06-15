import os
from flask import Flask, jsonify
from src.auth import auth
from src.bookmarks import bookmarks
from src.database import db


def create_app(test_config=None):
    app = Flask(__name__, instance_relative_config=True)

    if test_config is None:
        app.config.from_mapping(
            SECRET_KEY=os.environ.get('SECRET_KEY'),
            SQLALCHEMY_DATABASE_URI=os.environ.get('SQLALCHEMY_DB_URI'),
            SQLALCHEMY_TRACK_MODIFICATIONS=False
        )
    else:
        app.config.from_mapping(test_config)

    db.app = app
    db.init_app(app)
    app.register_blueprint(auth)
    app.register_blueprint(bookmarks)

    @app.get('/')
    def index():
        return 'Hello World!'

    @app.route('/hello')
    def hello():
        return jsonify({'message': 'Hello World!'})

    return app
