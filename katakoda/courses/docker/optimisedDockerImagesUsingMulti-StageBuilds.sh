# Optimised Docker Images using Multi-Stage Builds

################################################################################
# Step 1 - Create Dockerfile
git clone https://github.com/katacoda/golang-http-server.git

# First Stage
FROM golang:1.6-alpine

RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Second Stage
FROM alpine
EXPOSE 80
CMD ["/app"]

# Copy from first stage
COPY --from=0 /app/main /app
################################################################################
# Step 2 - Build Multi-Stage Docker Image
docker build -f Dockerfile.multi -t golang-app .
docker images
################################################################################
# Step 3 - Test Image
docker run -d -p 80:80 golang-app
curl localhost
################################################################################
