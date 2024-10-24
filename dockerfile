# Use Amazon Linux as the base image
FROM amazonlinux:2

# Install Nginx
RUN yum update -y && \
    yum install -y nginx && \
    yum clean all

# Create the welcome.html file with the desired content
RUN echo '<!DOCTYPE html>' > /usr/share/nginx/html/index.html && \
    echo '<html lang="en">' >> /usr/share/nginx/html/index.html && \
    echo '<head>' >> /usr/share/nginx/html/index.html && \
    echo '    <meta charset="UTF-8">' >> /usr/share/nginx/html/index.html && \
    echo '    <meta name="viewport" content="width=device-width, initial-scale=1.0">' >> /usr/share/nginx/html/index.html && \
    echo '    <title>Welcome</title>' >> /usr/share/nginx/html/index.html && \
    echo '</head>' >> /usr/share/nginx/html/index.html && \
    echo '<body>' >> /usr/share/nginx/html/index.html && \
    echo '    <h1>Welcome to HINTechnologies !!!</h1>' >> /usr/share/nginx/html/index.html && \
    echo '</body>' >> /usr/share/nginx/html/index.html && \
    echo '</html>' >> /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
