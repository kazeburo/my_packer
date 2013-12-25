# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

rpm -i http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
yum clean metadata

yum -y groupinstall 'Base'
yum -y groupinstall 'Development Tools'
yum -y install curl vim-enhanced
yum -y update

/sbin/chkconfig iptables off
/sbin/chkconfig ip6tables off
/sbin/chkconfig cpuspeed off
/sbin/chkconfig irqbalance off
/sbin/chkconfig iscsi off
/sbin/chkconfig iscsid off
/sbin/chkconfig auditd off
/sbin/chkconfig kdump off
/sbin/chkconfig mdmonitor off
/sbin/chkconfig messagebus off
/sbin/chkconfig netconsole off
/sbin/chkconfig netfs off
/sbin/chkconfig restorecond off
/sbin/chkconfig postfix off

reboot
sleep 60




