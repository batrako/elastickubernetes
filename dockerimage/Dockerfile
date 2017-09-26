FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.1
MAINTAINER ijalvarez@silk.es

# Establecer los valores por defecto de las variables

ENV ES_JAVA_OPTS "-Xms512m -Xmx512m"
ENV CLUSTER_NAME elasticsearch-default
ENV NODE_MASTER true
ENV NODE_DATA true
ENV NODE_NAME elasticsearch-default
ENV NODE_INGEST true
ENV HTTP_ENABLE true
ENV NETWORK_HOST _site_
ENV HTTP_CORS_ENABLE true
ENV HTTP_CORS_ALLOW_ORIGIN *
ENV NUMBER_OF_MASTERS 1
ENV MAX_LOCAL_STORAGE_NODES 1
ENV SHARD_ALLOCATION_AWARENESS ""
ENV SHARD_ALLOCATION_AWARENESS_ATTR ""
ENV MEMORY_LOCK false
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Variables de entorno para gestionar características de x-pack

ENV XPACK_ML_ENABLED true
ENV XPACK_MONITORING_ENABLED true
ENV XPACK_SECURITY_ENABLED true
ENV XPACK_WATCHER_ENABLED true

# Copiar fichero de config basado en variables para soporte con kubernetes
ADD config/elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch

# Copiar fichero entry point
#ADD bin/start.sh bin/start.sh
#RUN chown elasticsearch:elasticsearch \
#      bin/start.sh && \
#    chmod 0750 bin/start.sh
#CMD ["/bin/bash", "bin/start.sh"]



