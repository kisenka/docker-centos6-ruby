FROM sergeyzh/centos6-epel

RUN yum install -y bzip2 which git tar wget gcc-c++

ADD install-ruby.sh /tmp/
RUN chmod +x /tmp/install-ruby.sh
RUN /tmp/install-ruby.sh

RUN gem update --system --no-document
RUN gem install bundler --no-ri --no-rdoc

