FROM nginx:1.21.0

RUN rm /etc/nginx/conf.d/default.conf

RUN apt update -y

RUN apt install -y curl wget git libpcre3 libpcre3-dev unzip socat bash-completion apt-transport-https build-essential \
    zlib1g zlib1g-dev openssl libssl-dev


RUN wget https://nginx.org/download/nginx-1.21.0.tar.gz && tar zxvf nginx-1.21.0.tar.gz
RUN rm nginx-1.21.0.tar.gz
RUN git clone https://github.com/google/ngx_brotli.git
RUN cd ngx_brotli && git submodule update --init && cd ..

RUN cd nginx-1.21.0 && ls; ./configure --with-compat --add-dynamic-module=../ngx_brotli
RUN cd nginx-1.21.0 && make modules
RUN cp nginx-1.21.0/objs/*.so /etc/nginx/modules
RUN chmod 644 /etc/nginx/modules/*.so

COPY ./docker/prod/nginx/nginx.conf /etc/nginx/conf.d/nginx.conf
COPY ./docker/prod/nginx/main_nginx.conf /etc/nginx/nginx.conf