#!/bin/bash -ex

export RUBY_INSTALLER_VERSION=0.4.3
export RUBY_VERSION=2.1.2

cd /tmp

wget -O ruby-install-$RUBY_INSTALLER_VERSION.tar.gz \
        https://github.com/postmodern/ruby-install/archive/v$RUBY_INSTALLER_VERSION.tar.gz

tar -xzf ruby-install-$RUBY_INSTALLER_VERSION.tar.gz
cd ruby-install-$RUBY_INSTALLER_VERSION
make install
ruby-install -i /usr/local ruby $RUBY_VERSION

make uninstall
yum clean all
rm -rf /usr/local/src/ruby*
rm -rf /tmp/*