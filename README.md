Redis container to support API rate limiting in https://github.com/argovis/argovis_api.

Built at https://hub.docker.com/repository/docker/argovis/redis, tag matches Redis version tag.

`diff redis.conf.original redis.conf` to see conf chagnges from defaults.

## Conf change notes:

 - `bind`: necessary to play nice with container networking.
 - `stop-writes-on-bgsave-error`: CU OKD doesn't allow writes to container FS by default; don't really need persistence here, so turn off.
