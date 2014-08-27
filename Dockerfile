FROM centos:centos6

RUN yum install -y bzip2 git tar wget

ADD install-ruby.sh /tmp/
RUN chmod +x /tmp/install-ruby.sh
RUN /tmp/install-ruby.sh

RUN gem update --system --no-document
RUN gem install bundler --no-ri --no-rdoc

