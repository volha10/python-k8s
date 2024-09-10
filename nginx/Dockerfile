FROM nginxinc/nginx-unprivileged:1-alpine

COPY default.conf.tpl /etc/nginx/
COPY headers.conf /etc/nginx/
COPY run.sh /

USER root

RUN touch /etc/nginx/conf.d/default.conf && \
    chown nginx:nginx /etc/nginx/conf.d/default.conf && \
    chmod +x /run.sh

USER nginx

CMD ["/run.sh"]
