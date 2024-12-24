# Use the official n8n image
FROM n8nio/n8n:latest

# Copy workflows into the n8n data folder
COPY workflow.json /home/node/.n8n/

# Copy environment variables
COPY .env /home/node/.n8n/

# Set permissions
RUN chown -R node:node /home/node/.n8n

# Default command to start n8n
CMD ["n8n"]
