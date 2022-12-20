# How to use the Script to Setup a Minecraft Forge Server in an Oracle Cloud Server


***
# Info


###### Tutorial Link
https://blogs.oracle.com/developers/post/how-to-set-up-and-run-a-really-powerful-free-minecraft-server-in-the-cloud


###### SSH

```shell
ssh opc@<public ip> -i ~/.ssh/<key file>
```

###### Server Address

```
<public ip>:25565
```

###### Running the Server (After First-Time Setup)

```shell
./run.sh
```

***
# First-Time Setup Instructions

###### Fetching and Running the Server Setup Script

```shell
wget https://raw.githubusercontent.com/martiandeath/Minecraft-Server-Setup/main/Minecraft-Server-Setup.sh
```
```shell
chmod 777 Minecraft-Server-Setup.sh
```
```shell
./Minecraft-Server-Setup.sh
```

###### Setting Minecraft Game Rules (In Minecraft Server Console)

```
gamerule doFireTick false
```
```
gamerule playersSleepingPercentage 0
```
