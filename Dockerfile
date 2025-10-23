# build stage
FROM golang:alpine AS builder
WORKDIR /app
COPY go.mod ./
# COPY go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -o stack-exhauster -ldflags="-s -w" ./cmd/stack-exhauster

# final stage
FROM alpine:latest
RUN adduser -D appuser
USER appuser
WORKDIR /app
COPY --from=builder /app/stack-exhauster .
ENTRYPOINT ["./stack-exhauster"]
