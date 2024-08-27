FROM golang:1.22-alpine AS builder
WORKDIR /app/
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -ldflags "-w -s" 
FROM scratch
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=builder /app/quelpoke /quelpoke
CMD ["/quelpoke"]
