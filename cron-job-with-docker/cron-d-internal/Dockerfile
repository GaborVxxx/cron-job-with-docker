# Use an Ubuntu base image
FROM ubuntu:20.04

# Set non-interactive mode for apt-get to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    cron \
    && rm -rf /var/lib/apt/lists/*

# Copy scripts
COPY find-me.sh /usr/local/bin/find-me.sh
# Make the scripts executable
RUN chmod +x /usr/local/bin/find-me.sh

# Add cron job to /etc/cron.d
RUN echo "* * * * * root /usr/local/bin/find-me.sh >> /var/log/cron.log 2>&1" > /etc/cron.d/my-job
# Set proper permissions for the cron job file
RUN chmod 0644 /etc/cron.d/my-job

# Copy the entrypoint script and make it executable
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
# Make the scripts executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]