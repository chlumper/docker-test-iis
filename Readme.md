# Setup
Ggf. einen externen Docker Host setzen. zB damit man Windows Server 2016 host hat.
```bash
$env:DOCKER_HOST = "docker1office:2375"
```

# für docker-compose.yml:
Show build and run with compose file
```bash
docker-compose -f .\docker-compose.yml build
$env:COMPOSE_PROJECT_NAME = "staging" # set project name prefix for containers
docker-compose -f .\docker-compose.yml up
```

# für docker-compose.images.yml:
Show usage of images without build during compose.
```bash
docker build -f .\iis-docker\nanoserver\Dockerfile -t nanoserver-iis .\iis-docker\nanoserver\
docker build -f .\iis-tester\Dockerfile -t iis-tester .\iis-tester\
$env:COMPOSE_PROJECT_NAME = "staging" # set project name prefix for containers
docker-compose -f .\docker-compose.images.yml up
```
# für docker-compose.tags.yml:
Show usage of environment varaibles in compose file.
```bash
docker build -f .\iis-docker\nanoserver\Dockerfile -t nanoserver-iis:staging .\iis-docker\nanoserver\
docker build -f .\iis-tester\Dockerfile -t iis-tester:staging .\iis-tester\
$env:COMPOSE_PROJECT_NAME = "staging" # set project name prefix for containers
$env:TAG = "staging"
docker-compose -f .\docker-compose.tags.yml up
```

# Links:
[https://blog.docker.com/2016/09/build-your-first-docker-windows-server-container/]()
[https://docs.microsoft.com/en-us/virtualization/windowscontainers/manage-containers/container-networking]()
[https://docs.docker.com/compose/overview/]()
[https://docs.docker.com/compose/networking/]()