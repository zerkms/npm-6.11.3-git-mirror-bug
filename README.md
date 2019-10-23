## Instructions

1. put a valid github private key into the `id_rsa`
1. run `make run-13.0`
1. run `make run-12.11`
1. run `make run-12.10`

## nodejs 13.0 (npm 6.12.0)
```
docker build -t node-13.0 -f 13.0.Dockerfile .
Sending build context to Docker daemon  90.62kB
Step 1/8 : FROM node:13.0.0-slim
 ---> f8f8bfc9d3f6
Step 2/8 : WORKDIR /app
 ---> Using cache
 ---> 7b7030da0baf
Step 3/8 : RUN apt update     && apt install -y --no-install-recommends make git ssh-client
 ---> Using cache
 ---> 4cd5b73f1b99
Step 4/8 : RUN mkdir -p /root/.ssh     && echo "Host github.com\n    StrictHostKeyChecking no\n    IdentityFile /root/.ssh/id_rsa" >> /root/.ssh/config
 ---> Using cache
 ---> dfe040334ec5
Step 5/8 : COPY id_rsa /root/.ssh/id_rsa
 ---> Using cache
 ---> 2e0b1e513b3f
Step 6/8 : RUN chmod 0400 /root/.ssh/id_rsa
 ---> Using cache
 ---> ce267983f65a
Step 7/8 : COPY app/package.json .
 ---> Using cache
 ---> be1489938b3c
Step 8/8 : CMD ["npm", "install"]
 ---> Using cache
 ---> 4fb324eee540
Successfully built 4fb324eee540
Successfully tagged node-13.0:latest
docker run --rm -v $(pwd)/app:/app node-13.0
npm WARN npm npm does not support Node.js v13.0.0
npm WARN npm You should probably upgrade to a newer version of node as we
npm WARN npm can't make any promises that npm will work with this version.
npm WARN npm Supported releases of Node.js are the latest release of 6, 8, 9, 10, 11, 12.
npm WARN npm You can find the latest version at https://nodejs.org/
npm WARN app No description
npm WARN app No repository field.
npm WARN app No license field.

npm ERR! code 128
npm ERR! Command failed: git clone --mirror -q ssh://git@github.com/ljharb/qs.git /root/.npm/_cacache/tmp/git-clone-84fc00ed/.git
npm ERR! fatal: could not create leading directories of '/root/.npm/_cacache/tmp/git-clone-84fc00ed/.git'
npm ERR! 

npm ERR! A complete log of this run can be found in:
npm ERR!     /root/.npm/_logs/2019-10-23T21_52_56_385Z-debug.log
Makefile:7: recipe for target 'run-13.0' failed
make: *** [run-13.0] Error 1
```

## nodejs 12.11 (npm 6.11.3)
```
docker build -t node-12.11 -f 12.11.Dockerfile .
Sending build context to Docker daemon  17.41kB
Step 1/8 : FROM node:12.11.0-slim
 ---> e88f9fb33683
Step 2/8 : WORKDIR /app
 ---> Using cache
 ---> 9626ab9b4f1d
Step 3/8 : RUN apt update     && apt install -y --no-install-recommends make git ssh-client
 ---> Using cache
 ---> 235856503f85
Step 4/8 : RUN mkdir -p /root/.ssh     && echo "Host github.com\n    StrictHostKeyChecking no\n    IdentityFile /root/.ssh/id_rsa" >> /root/.ssh/config
 ---> Using cache
 ---> 847e6b6b2ea3
Step 5/8 : COPY id_rsa /root/.ssh/id_rsa
 ---> Using cache
 ---> c960a00afb8d
Step 6/8 : RUN chmod 0400 /root/.ssh/id_rsa
 ---> Using cache
 ---> 06f6ad8d09e4
Step 7/8 : COPY app/package.json .
 ---> Using cache
 ---> babb78cab4f7
Step 8/8 : CMD ["npm", "install"]
 ---> Using cache
 ---> d04ffa781d77
Successfully built d04ffa781d77
Successfully tagged node-12.11:latest
docker run --rm -v $(pwd)/app:/app node-12.11
npm WARN app No description
npm WARN app No repository field.
npm WARN app No license field.

npm ERR! code 128
npm ERR! Command failed: git clone --mirror -q ssh://git@github.com/ljharb/qs.git /root/.npm/_cacache/tmp/git-clone-394e5f3d/.git
npm ERR! fatal: could not create leading directories of '/root/.npm/_cacache/tmp/git-clone-394e5f3d/.git'
npm ERR! 

npm ERR! A complete log of this run can be found in:
npm ERR!     /root/.npm/_logs/2019-10-11T00_29_46_514Z-debug.log
Makefile:7: recipe for target 'run-12.11' failed
make: *** [run-12.11] Error 1
```


## nodejs 12.10 (npm 6.10.3)
```
rm -rf app/node_modules app/package-lock.json
docker build -t node-12.10 -f 12.10.Dockerfile .
Sending build context to Docker daemon  19.97kB
Step 1/8 : FROM node:12.10.0-slim
 ---> de16f9a8ad0f
Step 2/8 : WORKDIR /app
 ---> Using cache
 ---> 935e1f95c369
Step 3/8 : RUN apt update     && apt install -y --no-install-recommends make git ssh-client
 ---> Using cache
 ---> 1cb7c1960ecb
Step 4/8 : RUN mkdir -p /root/.ssh     && echo "Host github.com\n    StrictHostKeyChecking no\n    IdentityFile /root/.ssh/id_rsa" >> /root/.ssh/config
 ---> Using cache
 ---> 9659be6423dc
Step 5/8 : COPY id_rsa /root/.ssh/id_rsa
 ---> Using cache
 ---> 7f9ea8429c6c
Step 6/8 : RUN chmod 0400 /root/.ssh/id_rsa
 ---> Using cache
 ---> 2ec97adc1ffa
Step 7/8 : COPY app/package.json .
 ---> Using cache
 ---> 43e20b4df830
Step 8/8 : CMD ["npm", "install"]
 ---> Using cache
 ---> 5a7a9f2e5c04
Successfully built 5a7a9f2e5c04
Successfully tagged node-12.10:latest
docker run --rm -v $(pwd)/app:/app node-12.10
npm notice created a lockfile as package-lock.json. You should commit this file.
npm WARN app No description
npm WARN app No repository field.
npm WARN app No license field.

added 1 package from 1 contributor and audited 1 package in 10.759s
found 0 vulnerabilities
```
