# how to

mkdir flask-api-swagger-doc
cd flask-api-swagger-doc || exit

pip3 install pipenv
pipenv shell
pipenv install flask apispec apispec-webframeworks marshmallow

# urls to used
#curl http://127.0.0.1:5000
#curl http://127.0.0.1:5000/api/swagger.json
#curl http://127.0.0.1:5000/todo
#curl http://127.0.0.1:5000/docs
# change in swagger-initializer.js
# https://petstore.swagger.io/v2/swagger.json
# https://127.0.0.1:5000/api/swagger.json
