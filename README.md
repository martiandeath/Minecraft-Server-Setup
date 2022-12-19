# How to Setup a Minecraft Forge Server in an Oracle Cloud Server


# Tutorial Link
https://blogs.oracle.com/developers/post/how-to-set-up-and-run-a-really-powerful-free-minecraft-server-in-the-cloud


# SSH

```shell
ssh opc@<public ip> -i ~/.ssh/<key file>
```

# Server Address

```
<public ip>:25565
```

# Fetching and running the server setup file

```shell
wget https://raw.githubusercontent.com/martiandeath/Minecraft-Server-Setup/main/Minecraft-Server-Setup.sh
```
```shell
./Minecraft-Server-Setup.sh
```

# Firewall Settings

```shell
sudo firewall-cmd --permanent --zone=public --add-port=25565/tcp
```
```shell
sudo firewall-cmd --permanent --zone=public --add-port=25565/udp
```
```shell
sudo firewall-cmd --reload
```

# Update the System

```shell
sudo yum -y update && sudo yum upgrade
```
```shell
sudo yum -y install jdk-19
```

# Install Forge Server

```shell
wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.19.3-44.0.30/forge-1.19.3-44.0.30-installer.jar
```
```shell
java -jar forge-1.19.3-44.0.30-installer.jar --install
```
```shell
rm forge-1.19.3-44.0.30-installer.jar forge-1.19.3-44.0.30-installer.jar.log
```

# Initial Setup

```shell
./run.sh
```
```shell
echo "eula=true" > eula.txt
```
```shell
echo " -Xmx20G" > user_jvm_args.txt
```

# Set Server Properties

```shell
echo "allow-flight=false
allow-nether=true
broadcast-console-to-ops=true
broadcast-rcon-to-ops=true
difficulty=hard
enable-command-block=false
enable-jmx-monitoring=false
enable-query=false
enable-rcon=false
enable-status=true
enforce-secure-profile=true
enforce-whitelist=false
entity-broadcast-range-percentage=100
force-gamemode=false
function-permission-level=2
gamemode=survival
generate-structures=true
generator-settings={}
hardcore=false
hide-online-players=false
level-name=server-1.19.3
level-seed=
level-type=minecraft\:normal
max-chained-neighbor-updates=1000000
max-players=20
max-tick-time=60000
max-world-size=29999984
motd=Minecraft Server
network-compression-threshold=256
online-mode=true
op-permission-level=4
player-idle-timeout=10080
prevent-proxy-connections=false
previews-chat=false
pvp=true
query.port=25565
rate-limit=0
rcon.password=
rcon.port=25575
require-resource-pack=false
resource-pack=
resource-pack-prompt=
resource-pack-sha1=
server-ip=
server-port=25565
simulation-distance=10
spawn-animals=true
spawn-monsters=true
spawn-npcs=true
spawn-protection=16
sync-chunk-writes=true
text-filtering-config=
use-native-transport=true
view-distance=10
white-list=false
```

# Running the Server

```shell
./run.sh
```

# Setting Minecraft Game Rules (In Minecraft Server Console)

```
gamerule doFireTick false
```
```
gamerule playersSleepingPercentage 0
```
