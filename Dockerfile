FROM redis:7.0.2
RUN apt-get update -y
RUN apt-get install -y libc6 zlib1g/stable-security openssl/stable-security ldap-utils/stable-security

COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
