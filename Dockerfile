FROM ubuntu:latest

# Set the working directory in the image
#WORKDIR /app

# Install the necessary packages
#RUN apt-get update && apt-get install -y python3 python3-pip vim curl nginx
RUN apt-get update && apt-get install -y vim curl nginx

# Create ssl directory in nginx directory
RUN mkdir -p /etc/nginx/ssl

# Set permission
RUN chmod 700 /etc/nginx/ssl

# Generate certificate
RUN openssl req -x509 -sha256 -nodes -days 365 -subj "/C=GB/ST=London/L=London/O=Global Security/OU=IT Department/CN=example.com" -newkey rsa:2048 -keyout /etc/nginx/ssl/example.key -out /etc/nginx/ssl/example.crt

# Add https config
COPY www.example.com.conf /etc/nginx/conf.d/.
