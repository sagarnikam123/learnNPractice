# demo how to write dockerfiles part 2

# setting nginx-v1 as context
mkdir nginx-v1 && cd nginx-v1

nano index.html
# index.html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>This is a nex nginx web-server</title>
    </head>
    <body>
        <h1>Welcome</h1>
    </body>
</html>
