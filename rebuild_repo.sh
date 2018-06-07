mkdir -p ~/git/devel
cd ~/git/devel
sudo rm -r docker-vnc
# set git password cache to timeout after 1 hour (3600 seconds)
git config --global credential.helper 'cache --timeout=3600'
git clone --recursive --branch devel https://github.com/mirekphd/docker-vnc.git
cd docker-vnc
sudo chmod +x rebuild_repo.sh
docker build --tag mirekphd/docker-vnc --file Dockerfile.ubuntu.xfce.vnc



