FROM centos:7
WORKDIR /minecraft
EXPOSE 25565
RUN yum install wget java-1.8.0-openjdk -y && cd /minecraft && wget https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.15.2-31.1.63/forge-1.15.2-31.1.63-installer.jar && java -jar forge-1.15.2-31.1.63-installer.jar --installServer && java -Xmx1024M -Xms1024M -jar minecraft_server.1.15.2.jar nogui && rm -rf forge-1.15.2-31.1.63-installer.jar
ADD *.jar /minecraft/mods/
ADD eula.txt /minecraft/
ADD server.properties /minecraft/
