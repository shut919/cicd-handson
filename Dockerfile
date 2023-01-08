# アプリを動かす環境を指定する。今回はnginx上で動かすためnginxを指定。
FROM 'nginx:latest'

RUN service nginx start

# localのsrc配下をファイルをdockerコンテナ上の/usr/share/nginx/html配下にcopyする。
COPY src /usr/share/nginx/html/

VOLUME /usr/share/nginx/html