#linkin to the configuration in etc 
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart

