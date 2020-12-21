from urllib.parse import urlparse, parse_qs

def my_wsgi(environ,start_response)
  if environ.get("REQUEST_METHOD") == "GET"
    answer_string = environ.get("QUERY_STRING")
    temp_body = answer_string.split("&")
    body = "\n".join(temp_body)
    status = '200 OK'
    headers = [
    ('Content-Type','text/plain')
    ]
  start_response(status,headers)
  return [body]
   
#body = [bytes(i + '\n', 'ascii') for i in environ['QUERY_STRING'].split('&')]
#return body
