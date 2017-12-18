# EchoServer

from http.server import HTTPServer, BaseHTTPRequestHandler

class EchoHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        # sending 200 OK response
        self.send_response(200)

        # sending headers
        self.send_header('Content-type', 'text/plain; charset=utf-8')
        self.end_headers()

        # get requested path
        requestPath = self.path[1:]

        # response body
        self.wfile.write(requestPath.encode())

if __name__ == '__main__':
    server_address = ('', 8000) # serve on all addresses, port 8000
    httpd = HTTPServer(server_address, EchoHandler)
    httpd.serve_forever()
