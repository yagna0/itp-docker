# Docker static App Delployment
This is a local deployment to serve the Github pages app of [yagna0.github.io/mypages](http://yagna0.github.io/mypages)

## Architecture
- request to 'http://localhost:8081' get routed to the fp-svc which has a webserver on port 7901
- for 'http://fp-svc:7901/', the container proxies to 'http://hp-svc:6969/'
- for 'http://fp-svc:7901/mypages', the container serve the pages site stored inside the image at /'/usr/share/nginx/html' (this game from a git Repo)
- for 'hp-svc' serves a landing page on port '6969' that comes from a volume and has a link to 'http://localhost:8081/mypages/'

## Perequisites

- Docker version (27.2.0, build 3ab4256)+
- sh shell with typical tool and perl


## Tsting notes
- Tested on windows 11 home
- Tsted with Docker version (27.2.0, build 3ab4256)
- Tested with Git Bash
## Usage
1. Initialize the file structure and volumes.
```bash
chmod +x scripts\init.sh;
./scripts/init.sh;
```

2. To up the compose stack:
```bash
    docker compose up -d;

```    
3. Visit the homepage by going to [localhost:8081](http://localhost:8081)
in the browser.

4. Click the link you find on the homepage.
5. To monitor services, attach to the watchdog and curl different services.
```bash
docker compose attach watchdog-svc:
```
(from inside watchdog-c)
```sh
apk add curl;
curl http://fp-svc:7901; #proxied to http://hp-svc:6969/ (homepage)
curl http://hp-svc:6969/; # hits http://hp-svc:6969/ (homepage)
curl http://fp-svc:7901/mypages/ #hits the pages site (mypages)

```
use `ctrl-d` to exit and restart that main shell process.

6. To down the compose stack:
```bash
    docker compose down;
```   

## Mannually added updates as following
- final-project/default.conf

```
listen     7901;
listen [::]:7901; server_name localhost;

location /
 { proxy_pass http://hp-svc:6969; } 

location /mypages{
        alias  /usr/share/nginx/html;
        index  index.html index.htm;
}
```

- home-page/default.conf
```
listen 6969;
listen [::]:6969; server_name localhost;


location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;}