# Use official MySQL image
FROM mysql:8.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=IPL_Team
ENV MYSQL_USER=ipluser
ENV MYSQL_PASSWORD=iplpassword

# Copy initialization SQL script (optional)
# Any .sql file placed in /docker-entrypoint-initdb.d/ will be executed at container startup
COPY init.sql /docker-entrypoint-initdb.d/

