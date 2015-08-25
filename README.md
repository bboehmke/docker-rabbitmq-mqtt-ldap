# RabbitMQ with MQTT and LDAP

Based on [rabbitmq:3-management](https://hub.docker.com/_/rabbitmq/)

## Usage

```
docker run -d \
    --hostname rabbit \
    --name rabbit \ 
    -e "RABBITMQ_NODENAME=rabbit@docker" \
    -v /srv/docker/rabbit/data:/var/lib/rabbitmq \
    -p 1883:1883 \
    bboehmke/rabbitmq-mqtt-ldap
```
This will start RabbitMQ with the node name ```rabbit@docker``` . The MQTT 
port is  forwarded and the data storage is mapped on 
```/srv/docker/rabbit/data``` .

If a custom configuration is required (e.g. enabling SSL), use the following 
command:
```
docker run -d \
    --hostname rabbit \
    --name rabbit \ 
    -e "RABBITMQ_CONFIG_FILE=/rabbit-config/rabbit" \
    -v /srv/docker/rabbit/data:/var/lib/rabbitmq \
    -v /srv/docker/rabbit/config:/rabbit-config \
    -p 1883:1883 \
    -p 8883:8883 \
    bboehmke/rabbitmq-mqtt-ldap
```
Create the config file in the directory ```/srv/docker/rabbit/config/``` with 
the name ```rabbit.config```. 
(See RabbitMQ [Documentation](http://www.rabbitmq.com/configure.html))
