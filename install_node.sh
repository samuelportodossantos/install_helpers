sudo apt-get install zsh -y

node_uri=https://nodejs.org/dist/v16.16.0/node-v16.16.0-linux-x64.tar.xz
node_version=node-v16.16.0-linux-x64
linux_user=$USER
node_export_bin='export NODEJS_HOME=/opt/node/bin'
node_export_export='export PATH=$NODEJS_HOME:$PATH'
config_path=/home/$linux_user/

wget $node_uri
tar -xvf $node_version".tar.xz"
rm -f $node_version".tar.xz"
mv $node_version node
sudo chmod -R 755 /opt
sudo rm -rf /opt/node
sudo mv  node /opt/

sudo echo $node_export_bin >> $config_path'.profile'
sudo echo $node_export_export >> $config_path'.profile'

sudo echo $node_export_bin >> $config_path'.bashrc'
sudo echo $node_export_export >> $config_path'.bashrc'

sudo echo $node_export_bin >> $config_path'.zshrc'
sudo echo $node_export_export >> $config_path'.zshrc'