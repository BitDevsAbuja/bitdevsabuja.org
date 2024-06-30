# Stage 1: Build the website
FROM alpine:3.14 AS builder

# Install Zola
RUN apk add --no-cache zola

# Set the working directory
WORKDIR /site

# Copy the website files
COPY . .

# Build the website
RUN zola build

# Stage 2: Serve the website
FROM nginx:alpine

# Copy the built website from the builder stage
COPY --from=builder /site/public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
