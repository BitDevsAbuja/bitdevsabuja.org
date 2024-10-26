# Stage 1: Build the website
FROM alpine:3.14 AS builder

# Install Zola
RUN apk add --no-cache zola

# Set the working directory
WORKDIR /site

# Add a cache-busting argument to force a rebuild when files are changed
ARG CACHE_BUST=$(date +%s)
ENV CACHE_BUST=$CACHE_BUST

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
