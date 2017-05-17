#!/bin/bash


# enable our 404 error page, and service of pre-compressed content
perl -pi -e's!#error_page!error_page!' /etc/nginx/conf.d/default.conf

# run nginx
exec /usr/sbin/nginx -g "daemon off;"
