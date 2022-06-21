from flask import Blueprint, request, jsonify
from jsonschema.validators import validators
from src.database import Bookmarks, db
from src.constants.http_status_codes import HTTP_400_BAD_REQUEST, HTTP_409_CONFLICT, HTTP_201_CREATED, HTTP_200_OK
from flask_jwt_extended import get_jwt_identity, jwt_required

bookmarks = Blueprint('bookmarks', __name__, url_prefix='/api/v1/bookmarks')


@bookmarks.get('/')
def get_all():
    return {'bookmarks': []}


@bookmarks.route('/', methods=['POST', 'GET'])
@jwt_required
def handle_bookmarks():
    current_user = get_jwt_identity()

    if request.method == 'POST':
        body = request.get_json().get('body', '')
        url = request.get_json().get('url', '')

        if not validators(url):
            return jsonify({
                'error': 'Enter a valid url'
            }), HTTP_400_BAD_REQUEST

        if Bookmarks.query.filter_by(url=url).first():
            return jsonify({
                'error': 'URL already exists'
            }), HTTP_409_CONFLICT

        bookmark = Bookmarks(url=url, body=body, user_id=current_user)
        db.session.add(bookmark)
        db.session.commit()

        return jsonify({
            'id': bookmark.id,
            'url': bookmark.url,
            'short_url': bookmark.short_url,
            'visits': bookmark.visits,
            'body': bookmark.body,
            'created_at': bookmark.created_at,
            'updated_at': bookmark.update_at
        }), HTTP_201_CREATED

    else:
        bookmark_list = Bookmarks.query.filter_by(usr_id=current_user)
        data = []

        for item in bookmark_list:
            data.append({
                'id': item.id,
                'url': item.url,
                'short_url': item.short_url,
                'visits': item.visits,
                'body': item.body,
                'created_at': item.created_at,
                'updated_at': item.update_at
            })
        return jsonify({'data': data}), HTTP_200_OK
