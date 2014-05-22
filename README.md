## minecraft server

Server runs as user daemon and any volumes mounted should be owned by that user as well. ( uid and gid of 1 ).  You should run the server with cpu and memory limits if possible and use an external bind mounted volume for persistent data.


*Run the server*

```bash
mkdir /myminecraft-world && chown 1:1 /myminecraft-world

docker run -d -p 25565:25565 -v /myminecraft-world:/minecraft --memory 1536m --cpuset 2 crosbymichael/minecraft
```
