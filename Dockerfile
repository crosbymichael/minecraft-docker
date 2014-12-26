FROM crosbymichael/java

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.8.1/minecraft_server.1.8.1.jar /minecraft.jar 
RUN chown 1:1 /minecraft.jar && mkdir /minecraft && chown 1:1 /minecraft

EXPOSE 25565
WORKDIR /minecraft
USER 1

ENTRYPOINT ["java"]
CMD ["-Xmx1536M", "-Xms768M", "-jar", "/minecraft.jar", "nogui"]
