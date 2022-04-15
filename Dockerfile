FROM redis:6.2.6
RUN apt-get update -y
RUN apt-get upgrade -y libc6 zlib1g/stable-security
RUN apt-get upgrade -y --allow-downgrades openssl/stable-security # last so other packages dont force an 'upgrade'

COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
