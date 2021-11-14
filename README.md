Redis container to support API rate limiting in https://github.com/argovis/argovis_api.

`diff redis.conf.original redis.conf` to see conf chagnges from defaults.

## Release Process

 - Tag definition: `<redis base tag>-<release yymmdd>`. For example, `:6.2.6-211114` was based of of docker image `redis:6.2.6` and tagged on November 14, 2021.
 - Make release in this repo from `main` branch using this tag and release name.
 - Build and push docker image `argovis/redis:<tag>`.

## Conf change notes:

 - `bind`: necessary to play nice with container networking.
 - `stop-writes-on-bgsave-error`: CU OKD doesn't allow writes to container FS by default; don't really need persistence here, so turn off.
