NODE_9_VERSION=9.5.0

build-node-9:
	docker build -f ./docker/node-9/Dockerfile --build-arg NODE_9_VERSION=$(NODE_9_VERSION) -t undcomercio/node docker/node-9/
	docker tag undcomercio/node undcomercio/node:9
	docker tag undcomercio/node undcomercio/node:$(NODE_9_VERSION)
	docker push undcomercio/node:9
	docker push undcomercio/node:$(NODE_9_VERSION)

build-node-9-nginx:
	docker build -f ./docker/node-9-nginx/Dockerfile -t undcomercio/node:9-nginx docker/node-9-nginx/
	docker tag undcomercio/node:9-nginx undcomercio/node:$(NODE_9_VERSION)-nginx
	docker push undcomercio/node:9-nginx
	docker push undcomercio/node:$(NODE_9_VERSION)-nginx