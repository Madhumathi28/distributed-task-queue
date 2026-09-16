# Build stage
FROM golang:1.26.1 AS builder

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .

RUN go build -o api ./cmd/api
RUN go build -o worker ./cmd/worker

# Runtime stage
FROM debian:bookworm-slim

WORKDIR /app

COPY --from=builder /app/api .
COPY --from=builder /app/worker .

EXPOSE 8080

CMD ["./api"]