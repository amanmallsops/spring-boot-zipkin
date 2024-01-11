# Use the official Zipkin image
FROM openzipkin/zipkin:2.21

# Set environment variables
ENV STORAGE_TYPE=${STORAGE_TYPE} \
# Uncomment to disable scribe
    SCRIBE_ENABLED=${SCRIBE_ENABLED} \
# Uncomment to enable self-tracing
    SELF_TRACING_ENABLED=${SELF_TRACING_ENABLED} \
# Uncomment to enable debug logging
    JAVA_OPTS=${JAVA_OPTS}

# Expose the default Zipkin port
EXPOSE ${PORT_9411}


#docker build -t my-zipkin-server-image .
#docker run -d -p 9411:9411 --name zipkin my-zipkin-server-image
