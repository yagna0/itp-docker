#!/bin/sh

<<<<<<< HEAD

mkdir -p volumes/{config,html}
rm -rf volumes/{config,html}/*


=======
mkdir -p volumes/{config,html}
rm -rf volumes/config/*


>>>>>>> 4b8381e (trying resolve 404 error)
docker run --rm --name temp-nginx -d nginx:alpine3.21


docker cp temp-nginx:/etc/nginx/conf.d volumes/config
<<<<<<< HEAD
docker cp temp-nginx:/etc/nginx/nginx.conf volumes/config/nginx.conf

docker cp temp-nginx:/usr/share/nginx/html volumes/html
=======
docker cp temp-nginx:/etc/nginx/nginx.conf volumes/config

docker cp temp-nginx:/usr/share/nginx/html volumes
>>>>>>> 4b8381e (trying resolve 404 error)

docker stop temp-nginx

cp templates/home.html volumes/html/index.html
cp templates/http.conf volumes/config/conf.d/default.conf
rm -rf volumes/html/php-info
cp -r templates/html-php-info-path volumes/html/php-info

exit 0

NEW_HTML_BODY=$(cat <<EOF
<body>
    <P>please visit the <a href="/$FP_REPO_NAME/">$FP_REPO_NAME</a> page.</P>
</body>

EOF
)   