NODE_VERSION=10
XYZ_VERSION=10.8.0

build-node:
	docker build -f ./docker/node/Dockerfile --build-arg NODE_VERSION=$(XYZ_VERSION) -t undcomercio/node docker/node/
	docker tag undcomercio/node undcomercio/node:$(NODE_VERSION)
	docker tag undcomercio/node undcomercio/node:$(XYZ_VERSION)
	docker push undcomercio/node:$(NODE_VERSION)
	docker push undcomercio/node:$(XYZ_VERSION)

build-node-nginx:
	docker build -f ./docker/node-nginx/Dockerfile --build-arg NODE_VERSION=$(XYZ_VERSION) -t undcomercio/node:$(NODE_VERSION)-nginx docker/node-nginx/
	docker tag undcomercio/node:$(NODE_VERSION)-nginx undcomercio/node:$(XYZ_VERSION)-nginx
	docker push undcomercio/node:$(NODE_VERSION)-nginx
	docker push undcomercio/node:$(XYZ_VERSION)-nginx


build-node-koa:
	docker build -f ./docker/koa/Dockerfile --build-arg NODE_VERSION=$(XYZ_VERSION) -t undcomercio/node:$(NODE_VERSION)-koa docker/koa/
	docker tag undcomercio/node:$(NODE_VERSION)-koa undcomercio/node:$(XYZ_VERSION)-koa
	docker push undcomercio/node:$(NODE_VERSION)-koa
	docker push undcomercio/node:$(XYZ_VERSION)-koa