#nginx:alpine3.21
FROM nginx:alpine3.21 AS nginx-default

#use addition contex called final-project and copy outthe docs folder contens to the default nginx html folder: /user/share/nginx/html
#copy recursively the docs folder to the default nginx html folder
RUN rm -rf /usr/share/nginx/html/*
COPY --from=final-project docs/ usr/share/nginx/html/

