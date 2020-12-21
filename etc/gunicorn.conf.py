import multiprocessing

bind = "0.0.0.0:8080"
workers = 2
# or this-> gunicorn --bind='0.0.0.0:8080' hello:test
