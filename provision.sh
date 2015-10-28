sudo apt-get update

anaconda=Anaconda-2.3.0-Linux-x86_64.sh
cd /vagrant
if [[ ! -f $anaconda ]]; then
    echo -e "\n\nDownloading Anaconda installer..."
    wget --quiet https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/$anaconda
    chmod +x $anaconda
    ./$anaconda -b -p /opt/anaconda

    echo 'PATH=/opt/anaconda/bin:$PATH' >> /home/vagrant/.bashrc
fi

