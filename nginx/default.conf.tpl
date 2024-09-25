server {
    listen 80;
    server_name localhost;

    location /static {
        alias /www-data/web/staticfiles/;
    }

    location /media/ {
        alias /www-data/web/mediafiles/;
    }

    location / {
        include /etc/nginx/headers.conf;

        proxy_redirect off;
        proxy_pass http://${APP_HOST}:8002/;
        client_max_body_size  10M;
    }

    access_log /var/log/nginx/access.log;
    error_log /var/log/nginx/error.log;
}