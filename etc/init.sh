  
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
#sudo rm  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py

#sudo /etc/init.d/gunicorn -b 0.0.0.0:8080 hello:app
#sudo gunicorn -b 0.0.0.0:8080 -c /home/box//web/hello.py app:application &
#sudo gunicorn -b 0.0.0.0:8080 -c hello.py hello &
#gunicorn -bind='0.0.0.0:8080' -c hello.py hello:app
#gunicorn -b 0.0.0.0:8080 hello:application

#gunicorn --bind=0.0.0.0:8000 --workers=2 --timeout=15 --log-level=debug ask.wsgi:application


#sudo ln -sf /home/box/web/etc/gunicorn.conf  /etc/gunicorn.d/test
#gunicorn --bind 0.0.0.0:8000 ask.wsgi:application

##gunicorn -b 0.0.0.0:8080 hello &
##cd /home/box/web/ask

sudo ln -sf /home/box/web/etc/gunicorn.conf  /etc/gunicorn.d/test
#sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:application
gunicorn -w 2 -c /home/box/web/etc/hello.py hello:application & gunicorn -w 2 -c /home/box/web/etc/qa.py ask.wsgi:application
