# docker-oci-vm-creator

Still "Out Of Host Capacity"? This automation tool creates VM instance on Oracle Cloud and retrys on failure. 

## Step

Add API key at [Oracle Cloud](https://cloud.oracle.com/identity/domains/my-profile/api-keys)

Save the API key and the config exmaple. 

Change the `key_file` in the example config to the path to API key:

```
key_file=~/.oci/api_key.pem
```

Generate a SSH keypair used for instance login, or use `id_rsa.pub` of the host.

Start the docker container:

```sh
docker run -d \
-v /path/to/api_key.pem:/oracle/.oci/api_key.pem \
-v /path/to/config:/oracle/.oci/config \
-v /path/to/id_rsa.pub:/oracle/id_rsa.pub \
--name oci-auto \
d0v0b/oci-vm-creator
```

Setup inside the container (interactive):

```sh
docker exec -it oci-auto oci-setup
```

Done. 

Follow logs:

```sh
docker logs -f oci-auto
```
