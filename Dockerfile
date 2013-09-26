# docker-rabbitmq
#
# VERSION 0.1

FROM centos
MAINTAINER Dave Goehrig dave@dloh.org

# We need the developer tools to build the occasional add on or two
RUN yum -y groupinstall "Development Tools"

# Install EPEL6 for additional packages
RUN yum -y install http://mirror.pnl.gov/epel/6/i386/epel-release-6-8.noarch.rpm

# install rabbitmq-server 3.1.5
RUN yum -y install http://www.rabbitmq.com/releases/rabbitmq-server/v3.1.5/rabbitmq-server-3.1.5-1.noarch.rpm

# activate plugins
RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_mqtt rabbitmq_stomp rabbitmq_management  rabbitmq_management_agent rabbitmq_management_visualiser rabbitmq_federation rabbitmq_federation_management sockjs

# replace erlang cookie
RUN uuidgen -r | sed 's%-%%g' > ~/.erlang.cookie

# expose AMQP port and Management interface
EXPOSE 5672
EXPOSE 15672

CMD /usr/sbin/rabbitmq-server
