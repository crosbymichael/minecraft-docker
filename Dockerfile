FROM crosbymichael/java

RUN mkdir /minecraft
ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.7.8/minecraft_server.1.7.8.jar /minecraft/minecraft.jar 

EXPOSE 25565
WORKDIR /minecraft
VOLUME ["/minecraft"]

ENTRYPOINT ["java", "-jar", "minecraft.jar", "nogui"]
CMD ["-Xmx1536M", "-Xms768M"]
