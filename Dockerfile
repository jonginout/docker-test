FROM node

ENV NODE_ENV=production

ADD . /src
# 현재 디렉( . )에 있는 것들을 src에 넣어준다.
# 현재 디렉토리라 함은 지금 이 폴더 my-node를 말한다.
# ADD는 파일과 디렉토리를 호스트에서 docker image로 copy한다.

WORKDIR /src
# src 디렉토리에 
# WORKDIR는 리눅스에서 cd 라고 보면 된다.

RUN npm install && \
    npm install -g pm2
# 이미지를 빌드 할 때 실행시키는 커맨드
# 필요한 패키지 install 해야 하니깐

CMD ["pm2-runtime", "process.yml"]
# CMD [ "node", "app.js" ]
# 컨테이너가 실행될 때 실행할 커맨드
# node app.js