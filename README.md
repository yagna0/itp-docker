# Docker static App Delployment
This is a local deployment to serve the Github pages app of [yagna0.github.io/mypages](http://yagna0.github.io/mypages)



## prerequisites
-Docker version (27.2.0, build 3ab4256)+
-sh shell with typical tool and perl
## testing notes
-Tested on windows 11 home
_Tested with Docker version (27.2.0, build 3ab4256)
-Tested with gitbash

## Usage
1. Initialize the file structure and volumes.
'''bash
chmod +x scripts\init.sh;
./scripts/init.sh;
'''

2. To up the compose stack.
    docker compose up -d
3. TO Down the compose stack:
    docker compose down

## Mannually added updates as following
 1. final-project/default.conf
    '''
     listen       7901;
    listen  [::]:7901;
    server_name  localhost;

    location / {
        proxy_pass http://hp-svc:6969;
    }
    location /mypages {
        alias   /usr/share/nginx/html;
        index  index.html index.htm;
        
    }'''

    '''
2.  home-page/default.conf
 
    listen       6969;
    listen  [::]:6969;
    server_name  localhost;

    #access_log  /var/log/nginx/host.access.log  main;

    location / { 
        root  /usr/share/nginx/html;
        index  index.html index.htm;
    } '''