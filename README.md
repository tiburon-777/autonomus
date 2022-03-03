# Gogs + Athens mod proxy + Docker Registry running with Docker Compose

## How to start
---
1. Clone this repo.
1. Set value for the `SECRET_KEY` in the `data\config\app.ini` (e.g. using [www.random.org](https://www.random.org/strings/?num=1&len=15&digits=on&upperalpha=on&loweralpha=on&unique=off&format=html&rnd=new)).
2. Run `make up` to start all.

## How to stop 
---
1. Run `make down` to stop all containers.

## Settings

See [Gogs configuration cheat sheet][1], [Configuring Athens][2] and [Docker documentation][3] for more information.


[1]: https://github.com/gogs/docs/blob/master/en-US/advanced/configuration_cheat_sheet.md "Gogs cheat sheet"
[2]: https://docs.gomods.io/configuration/ "Configuring Athens"
[3]: https://docs.docker.com/registry/deploying/ "Deploy a registry server"

## How to use

### Gogs listening on [http://localhost:3000](http://localhost:3000)

### Downloading go packages through atens proxy:

* in general case:

        export GOPROXY=http://localhost:3001 && go get ./...

* io refill proxy cache:

        go clean --modcache && export GOPROXY=http://localhost:3001 && go get ./...

### Copy an image from Docker Hub to your registry
* pull an image from Docker Hub and push it to your registry:

        make image name=<image_name:version>

* pull an image from your local registry:

        docker pull localhost:5000/<image_name:version>