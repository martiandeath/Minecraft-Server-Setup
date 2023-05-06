# How to use the Script to Setup a Minecraft Forge Server in an Oracle Cloud Server

## Create an Account

##### Follow the account creation section of this tutorial and come back here to complete the setup

Todd Sharp, Oracle Developers Blog - [How To Set Up and Run a (Really Powerful) Free Minecraft Server in the Cloud](https://blogs.oracle.com/developers/post/how-to-set-up-and-run-a-really-powerful-free-minecraft-server-in-the-cloud)

## Instance Setup

#### Create an Oracle Cloud instance with the following configuration:

###### Image and shape:

Choose "Oracle Linux 9" as the image

Choose "Ampere" for the shape

Select "VM.Standard.A1.Flex"

Set it to have 4 OCPUs and 24GB memory

###### Networking:

Select "Create new virtual cloud network" and leave everything as default

###### SSH Keys:

Download the private/public SSH keys for your instance

Click "Create"

###### Subnet

Click on the subnet in the page that has just opened

Click on the Default Security List

Click "Add Ingress Rules"

Add two rules, both with source "0.0.0.0/0" and destination port range "25565", one using protocol TCP and the other UDP (add multiple by clicking "Another Ingress Rule")

Click "Add Ingress Rules"

That's the instance setup done!

##### SSH

If on Windows, you will have to install SSH yourself

```shell
ssh opc@<public ip of oracle instance> -i <path to key file>
```

## After Connecting to your instance via SSH

##### Fetching the Server Script

```shell
wget https://raw.githubusercontent.com/martiandeath/Minecraft-Server-Setup/main/Minecraft-Server-Setup.sh
```

##### Setting the Script's File Permissions

```shell
chmod +x Minecraft-Server-Setup.sh
```

##### Running the Script

```shell
./Minecraft-Server-Setup.sh
```

##### Setting Minecraft Game Rules (In Minecraft Server Console) (Optional)

```
gamerule doFireTick false
```
```
gamerule playersSleepingPercentage 0
```

##### After setting up the game rules:

Stop the server by typing "stop"

Exit the SSH connection by typing "exit"

Go to your Oracle Cloud interface and reboot your instance, this will apply any updates completed during running the script

Reconnect to your instance and start the server using the command below, once this command has been run, you can disconnect from the SSH connection and close the terminal window

## Info

##### Server Address

```shell
<public ip>:25565
```

##### Running the Server After First-Time Setup

```shell
nohup ./run.sh &
```
