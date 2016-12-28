# docker-standard-febe-proxy
a docker of standard frontend backend nginx proxy

# Run nginx as proxy in docker

```shell
docker run \
  -d \
  --name proxy-nginx \
  -p 80:80 \
  -p 443:443 \
  -v /certbot/nginx.conf:/etc/nginx/conf.d/default.conf \
  -v /etc/letsencrypt:/etc/letsencrypt \
  -v /certbot/dhparam.pem:/etc/ssl/certs/dhparam.pem \
  nginx:alpine
```

## References

- https://hub.docker.com/_/nginx/
- http://letsencrypt.readthedocs.io/en/latest/using.html#running-with-docker
- https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-14-04
