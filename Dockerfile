FROM rabbitmq:3-management
MAINTAINER Benjamin Böhmke

# enable mqtt and ldap plugin
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_auth_backend_ldap

# expose ports
EXPOSE 1883 8883