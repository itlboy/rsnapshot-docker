FROM centos:7

RUN yum -y update
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install cronie rsnapshot
CMD ["/usr/sbin/crond && touch /var/log/rsnapshot.log && tail -f /var/log/rsnapshot.log"]
