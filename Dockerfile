FROM nginx

COPY [ "file1", "file2", "/www/data/" ]
COPY default.conf /etc/nginx/conf.d/default.conf

