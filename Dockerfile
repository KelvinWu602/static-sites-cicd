FROM nginx:1.27.3

# Why copy html folder? 
# Would you need the original html file?
# Why copy to new folder?
COPY ./static /var/www/html

# really works?
COPY ./nginx /etc/nginx/conf.d
# RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]