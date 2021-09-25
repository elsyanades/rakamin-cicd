FROM golang:alpine AS builder

WORKDIR /app-be
COPY . .
RUN go build -o /handson-serverde

FROM alpine:latest
COPY --from=builder /handson-serverde /handson-serverde

CMD ["/handson-serverde"]


# FROM golang:alpine

# RUN apk update && apk add --no-cache git

# WORKDIR /app

# COPY . .

# RUN go mod tidy

# RUN go build -o main.exe