# run ssh root@XXX.XXX.XXX.XXX 'bash -s' < node_deploy.sh 

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install python-software-properties python g++ make -y
sudo add-apt-repository ppa:chris-lea/node.js -y
sudo apt-get update -y
sudo apt-get install nodejs -y
sudo apt-get install nginx -y
sudo apt-get install git-core -y

npm config set registry http://registry.npmjs.org/

cd /etc/nginx
rm sites-enabled/default
cd sites-available

cd /var
mkdir www
cd www
git clone https://github.com/melbourne2991/angbone.git
cd angbone
npm install
node app.js

