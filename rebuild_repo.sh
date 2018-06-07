mkdir -p ~/git/devel
cd ~/git/devel
sudo rm -r ml-cpu-r35-guac
# set git password cache to timeout after 1 hour (3600 seconds)
git config --global credential.helper 'cache --timeout=3600'
git clone --recursive --branch devel https://github.com/mirekphd/ml-cpu-r35-guac.git
cd ml-cpu-r35-guac
sudo chmod +x rebuild_repo.sh
docker build --tag mirekphd/ml-cpu-r35-guac .



