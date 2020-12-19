from urllib.parse import urlparse, parse_qs

def my_wsgi(environ,start_response)
  URL = ''
  status = '200 OK'
  headers = [
    ('Content-Type','text/plain')
    ]
    body = ''
    start_response(status,headers)
    return [body]
