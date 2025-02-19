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
    TBD