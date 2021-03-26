from bitnami/wordpress


COPY /confs/httpd.conf /opt/bitnami/apache/conf/httpd.conf
COPY /confs/wordpress-https-vhost.conf /opt/bitnami/apache/conf/vhosts/wordpress-https-vhosts.conf
COPY /confs/wordpress-htaccess.conf /opt/bitnami/apache/conf/vhosts/htaccess/wordpress-htaccess.conf
COPY /confs/wordpress-vhost.conf /opt/bitnami/apache/conf/vhosts/wordpress-vhost.conf

USER 1001
ENTRYPOINT [ "/app-entrypoint.sh" ]
CMD [ "httpd", "-f", "/opt/bitnami/apache/conf/httpd.conf", "-DFOREGROUND" ]