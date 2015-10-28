# this is the work directory; it will be created on the host, in the directory where Vagrantfile resides
sudo mkdir -p /vagrant/notebook

/opt/anaconda/bin/ipython notebook --notebook-dir=/vagrant/notebook --no-browser --ip=0.0.0.0 &
