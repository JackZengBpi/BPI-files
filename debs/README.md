# BPI-files/debs
The files for Banana PI System

for Banana Pi:

dpkg -i xxx.deb

for ubuntu 14.04 (x86):

dpkg --add-architecture armhf

or

for ubuntu 12.04 (x86):

echo "foreign-architecture armhf" >> /etc/dpkg/dpkg.cfg.d/multiarch




dpkg -i bananapi-bpi-tools*.deb

dpkg -i linux-bananapi-bpi-m2-kernel3*.deb

dpkg -i linux-bananapi-bpi-m2p-kernel3*.deb

dpkg -i linux-bananapi-bpi-m3-kernel3*.deb



