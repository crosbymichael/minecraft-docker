FROM java

ADD https://launcher.mojang.com/mc/game/1.12.2/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar /minecraft.jar 
RUN chown 1:1 /minecraft.jar && mkdir /minecraft && chown 1:1 /minecraft

EXPOSE 25565
WORKDIR /minecraft
USER 1

ENTRYPOINT ["java"]
CMD ["-Xmx1536M", "-Xms768M", "-jar", "/minecraft.jar", "nogui"]
