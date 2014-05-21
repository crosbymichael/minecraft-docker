FROM crosbymichael/java

RUN mkdir /minecraft
ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.7.9/minecraft_server.1.7.9.jar /minecraft.jar 

EXPOSE 25565
WORKDIR /minecraft

ENTRYPOINT ["java"]
CMD ["-Xmx1536M", "-Xms768M", "-jar", "/minecraft.jar", "nogui"]
