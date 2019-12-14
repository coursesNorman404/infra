wget -O /tmp/packer.zip https://releases.hashicorp.com/packer/1.4.5/packer_1.4.5_linux_amd64.zip
unzip /tmp/packer.zip -d ~/bin
./tmp/packer validate deployments/template.json &&
./tmp/packer build deployments/template.json &&