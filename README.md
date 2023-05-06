# How to use the Script to Setup a Minecraft Forge Server in an Oracle Cloud Server

## Info

###### Tutorial Link

Todd Sharp, Oracle Developers Blog - [How To Set Up and Run a (Really Powerful) Free Minecraft Server in the Cloud](https://blogs.oracle.com/developers/post/how-to-set-up-and-run-a-really-powerful-free-minecraft-server-in-the-cloud)

###### SSH

```shell
ssh opc@<public ip of oracle server> -i <path to key file>
```

###### Server Address

```shell
<public ip>:25565
```

###### Running the Server After First-Time Setup

```shell
nohup ./run.sh &
```

## First-Time Setup Instructions

###### Fetching the Server Script

```shell
wget https://raw.githubusercontent.com/martiandeath/Minecraft-Server-Setup/main/Minecraft-Server-Setup.sh
```

###### Setting the Script's File Permissions

```shell
chmod +x Minecraft-Server-Setup.sh
```

###### Running the Script

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
