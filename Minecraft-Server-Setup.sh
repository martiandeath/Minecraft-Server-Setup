sudo firewall-cmd --permanent --zone=public --add-port=25565/tcp
sudo firewall-cmd --permanent --zone=public --add-port=25565/udp
sudo firewall-cmd --reload
sudo yum -y update && sudo yum upgrade
sudo yum -y install jdk-19
wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.19.3-44.0.40/forge-1.19.3-44.0.40-installer.jar
java -jar forge-1.19.3-44.0.40-installer.jar --install
rm forge-1.19.3-44.0.40-installer.jar forge-1.19.3-44.0.40-installer.jar.log
./run.sh
echo "eula=true" > eula.txt
echo " -Xmx20G" > user_jvm_args.txt
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
white-list=false" > server.properties
./run.sh
