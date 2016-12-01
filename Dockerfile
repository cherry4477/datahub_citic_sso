FROM alpine

# Copy code

ADD . /

# Install nginx & node
# Install Bower
# Install node & bower depends
# Set bower root allow
RUN apk add --update nginx && \
    cp nginx.conf /etc/nginx/nginx.conf

EXPOSE 8000

ENTRYPOINT ["nginx", "-g", "daemon off;"]
#CMD ["./start.sh"]
