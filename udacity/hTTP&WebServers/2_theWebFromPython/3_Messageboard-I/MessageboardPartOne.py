# Messageboard Part One

from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import parse_qs


class MessageHandler(BaseHTTPRequestHandler):
    def do_POST(self):
        # 1. How logn was the message ?
        length = int(self.headers.get('Content-length', 0))

        # 2. Read the correct amount of data from the request
        data = self.rfile.read(length).decode()

        # 3. Extract the Message field from the request data
        message  = parse_qs(data)['message'][0]

        # send the Message field back as the response
        self.send_response(200)
        self.send_header('Content-type', 'text/plain; charset=utf-8')
        self.end_headers()
        self.wfile.write(message.encode())


if __name__ == '__main__':
    server_address = ('', 8000)
    httpd = HTTPServer(server_address, MessageHandler)
    httpd.serve_forever()
