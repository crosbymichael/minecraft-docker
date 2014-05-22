FROM crosbymichael/java

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.7.9/minecraft_server.1.7.9.jar /minecraft.jar 
RUN chown 1:1 /minecraft.jar

EXPOSE 25565
WORKDIR /minecraft

USER daemon

ENTRYPOINT ["java"]
CMD ["-Xmx1536M", "-Xms768M", "-jar", "/minecraft.jar", "nogui"]
