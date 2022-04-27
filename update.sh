Version=1.18.30.04
Server_path=/mnt/main/Cache/Bedrock
Script_path=/mnt/main/Main/Software/Server/Bedrock_Update


core_url=https://minecraft.azureedge.net/bin-linux/bedrock-server-${Version}.zip
mkdir ${Script_path}/backup
cp -r ${Server_path}/server.properties ${Script_path}/backup/
cp -r ${Server_path}/worlds ${Script_path}/backup/
cp -r ${Server_path}/whitelist.json ${Script_path}/backup/
cp -r ${Server_path}/permissions.json ${Script_path}/backup/
rm -rf ${Script_path}/core
mkdir ${Script_path}/core/
cd ${Script_path}/core/
wget ${core_url} 
mv ${Script_path}/core/*.zip ${Script_path}/core/core.zip
cd ${Script_path}/core/
unzip core.zip
rm -rf ${Server_path}/
cp -r * ${Server_path}/
cp -r ${Script_path}/backup/* ${Server_path}/
