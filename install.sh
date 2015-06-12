#!/bin/bash

echo installing
mv /etc/pki/rpm-gpg /etc/pki/rpm-gpg_source
mv parachutes-master/rpm-gpg /etc/pki/
mv /etc/yum.repos.d /etc/yum.repos.d_source
mv parachutes-master/yum.repos.d /etc/
yum update -q
yum -y install $(cat parachutes-master/package_elastix-2.5)
reboot
