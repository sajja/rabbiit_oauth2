FROM rabbitmq:3.8.5
ADD advanced.config /etc/rabbitmq/
ADD rabbitmq.conf /etc/rabbitmq/
RUN /opt/rabbitmq/sbin/rabbitmq-plugins enable rabbitmq_management
RUN /opt/rabbitmq/sbin/rabbitmq-plugins enable rabbitmq_auth_backend_oauth2
EXPOSE 5672
EXPOSE 15672
