FROM devopsedu/webapp
COPY website /var/www/html
RUN rm /var/www/html/index.html
EXPOSE 80
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]



