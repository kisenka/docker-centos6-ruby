FROM kisenka/centos6-epel

RUN yum install -y bzip2

ADD scripts/ /scripts/
RUN /scripts/install-ruby.sh

RUN gem install bundler --no-ri --no-rdoc