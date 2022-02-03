# LINUX USEFUL COMMANDS

To delete all images with status <none> <none>
```console
$ docker rmi $(docker images -f "dangling=true" -q)
```

References:
https://projectatomic.io/blog/2015/07/what-are-docker-none-none-images/

