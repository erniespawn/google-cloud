Skip to content

Search or jump to...
Pull requests
Issues
Codespaces
Marketplace
Explore
 
@erniespawn 
erniespawn
/
Google_WIF
Public
Cannot fork because you own this repository and are not a member of any organizations.
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
Settings
Pane width
Use a value between 18% and 34%

22
Change width
Code
Go to file
t
.github
Dockerfile
README.md
www.example.com.conf
Documentation • Share feedback
BreadcrumbsGoogle_WIF
/Dockerfile
Latest commit
erniespawn
erniespawn
testing docker
22bdcb9
 · 
2 days ago
History
File metadata and controls

Code

Blame
26 lines (18 loc) · 802 Bytes
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

# Run a command to start the application
#CMD ["python3", "app.py"]

# Run a command to start the application
#CMD ["python3", "app.py"]
Google_WIF/Dockerfile at main · erniespawn/Google_WIF
