# testapp

node.js test application which listening on configured port and prints "Hello World!"

## Requirements
* npm
* nodejs 10
* git

## Install reqirements (Centos 7)

```bash
sudo yum install npm nodejs git 
```

## Common setup

Clone the repo and install the dependencies.

```bash
git clone https://gitlab.com/mavial/testapp.git
cd testapp
```

```bash
npm install
```

## Steps for access

To start the express server, run the following

```bash
node app.js
```

Open [http://localhost:3100](http://localhost:3100) and look at output.

```bash
curl localhost:3100
>Hello World!
```

## Default port(3100) can be changed by setting environment variable PORT 

```bash
export PORT=3100
node app.js
```

## Run application in Docker container

```bash
docker run -d --name=testapp -p 3100:3100 -e PORT=3100 registry.gitlab.com/mavial/testapp:latest

```

