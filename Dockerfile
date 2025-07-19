FROM swift:6.1-noble AS builder

RUN apt-get update && apt-get install -y libsqlite3-dev

WORKDIR /app
COPY . .

# Clean and build
RUN swift package clean && swift build -v