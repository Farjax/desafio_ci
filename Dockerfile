FROM golang:1.12-alpine as builder

WORKDIR /desafio/src/desafio_ci

COPY . .
 
RUN go build  src/desafio_ci/soma.go

FROM scratch
WORKDIR /desafio/src/desafio_ci
COPY --from=builder /desafio/src/desafio_ci/soma .

CMD ["./soma"]
