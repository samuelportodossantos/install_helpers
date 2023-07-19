alias nodei="nodeinstall"
## example:  nodei "18.17.0"
nodeinstall() {
    local node_version="$1"
    local node_uri="https://nodejs.org/dist/v${node_version}/node-v${node_version}-linux-x64.tar.xz"
    local node_folder="node-v${node_version}-linux-x64"
    local node_export_bin='export NODEJS_HOME=/opt/node/bin'
    local node_export_export='export PATH=$NODEJS_HOME:$PATH'

    wget $node_uri
    tar -xvf "${node_folder}.tar.xz"
    rm -f "${node_folder}.tar.xz"
    mv "${node_folder}" node
    sudo chmod -R 755 /opt
    sudo rm -rf /opt/node
    sudo mv node /opt/

    echo $node_export_bin >> $HOME/.profile
    echo $node_export_export >> $HOME/.profile

    echo $node_export_bin >> $HOME/.bashrc
    echo $node_export_export >> $HOME/.bashrc

    echo $node_export_bin >> $HOME/.zshrc
    echo $node_export_export >> $HOME/.zshrc

    . ~/.zshrc
}
