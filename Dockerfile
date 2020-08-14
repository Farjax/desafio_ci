FROM golang:1.12-alpine as builder

WORKDIR /go/src/desafio_ci

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" soma.go
RUN pwd
RUN ls -la

# FROM scratch
# WORKDIR /go/src/desafio_ci
# COPY --from=builder /go/src/desafio_ci/soma .
# CMD ["./soma"]
