<<<<<<< HEAD

## Architecture
- request to 'http://localhost:8089' get handled
by the `http-svc`
- if it wncounters php files, it executes them using the`php-svc` over the docker netwoek on port `9000`
=======


## Architecture
- request to 'http://localhost:8089' get handled by the http-svc
- if it wncounters php files, it executes them using thephp-svc over the docker netwoek on port 9000
>>>>>>> 4b8381e (trying resolve 404 error)

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
<<<<<<< HEAD
3. Visit the homepage by going to [localhost:8089](http://localhost:8089)
in the browser.

4. Click the link you find on the homepage.You shold see the PHP info with some purple coloring.
5. To monitor services, attach to the watchdog and curl different services.
```bash
docker compose up -d
```
=======
3. Visit the homepage by going to localhost:8089 in the browser.

4. Click the link you find on the homepage.You shold see the PHP info with some purple coloring.

5. To up the compse stack:
```bash
docker compose up -d
```

```
use `ctrl-d` to exit and restart that main shell process.

>>>>>>> 4b8381e (trying resolve 404 error)
6. To down the compose stack:
```bash
 docker compose down;
```   
<<<<<<< HEAD
=======

>>>>>>> 4b8381e (trying resolve 404 error)
