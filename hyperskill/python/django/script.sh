# Django

#####################################################################
# create project - smithee
django-admin startproject smithee

# create application
cd smithee
django-admin startapp movies

# add index.html ( movies/templates/movies/index.html)
mkdir -p movies/templates/movies
touch  movies/templates/movies/index.html

touch movies/views.py

# Starting the Local Server
python3 manage.py runserver
#####################################################################
