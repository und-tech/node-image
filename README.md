# Node.js

[![dockeri.co](http://dockeri.co/image/undcomercio/node)](https://hub.docker.com/r/undcomercio/node/)


This images are based from official node-slim imagen on docker-hub.com.

## Table of Contents

  - [How to use this images](#how-to-use-this-image)
  - [Best Practices](#best-practices)

## How to use this image node base image

### How to use base node images(like node:9)

```dockerfile
# specify the node base image with your desired version node:<version>
FROM undcomercio/node:9
# replace this with your application's default port
EXPOSE 8888
```
### How to use base node with nginx images(like node:9-nginx)

You need define in your package.json how to run your application in a task called "server". By default this image run "yarn server" in a node home directory (/home/node/app).
``` json
{
  "scripts": {
    "server": "node index.js"
  }
  ...
}
```
If you prefer Docker Compose:

```yml
version: "2"
services:
  node:
    image: "node:9-nginx"
    user: "node"
    environment:
      - NODE_ENV=production
    volumes:
      - ./app:/home/node/app
    expose:
      - "80"
```

You can then run using Docker Compose:

```console
$ docker-compose up -d
```

## Best Practices

You can see the [Best Practices Guide](https://github.com/nodejs/docker-node/blob/7fea7b033c5a292dd74199d2ba0fbb161f75aa0d/docs/BestPractices.md) on official documentation