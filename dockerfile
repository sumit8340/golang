FROM golang:1.17.0-alpine
WORKDIR /app
RUN go mod init github.com/sumit8340/golang
COPY . /app 
RUN go build -o main .

CMD ["/app/main"]
EXPOSE 8080