# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

rpm -i http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
yum clean metadata

yum -y groupinstall 'Development Tools'
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget yum-utils
yum -y install curl bind-utils file git mailx man ntp openssh-clients patch rsync screen sysstat dstat htop traceroute vim-enhanced

