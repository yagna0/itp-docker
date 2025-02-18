#nginx:alpine3.21
FROM nginx:alpine3.21 AS nginx-default

#USE ADDITIONAL CONTEXT CALLED FINAL PROJECT AND COPY T DOCS FOLDER CONTENTS TO THE DEFAULT NGINX HTML FOLDER
#copy recursively all the files from the docs folder to the default nginx html folder
RUN rm -rf /usr/share/nginx/html/*
COPY --from=final-project docs/ /usr/share/nginx/html
