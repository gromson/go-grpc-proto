FROM golang:1.10.3

WORKDIR /tmp

RUN go get -u google.golang.org/grpc && \
    apt-get update && \
    apt-get install unzip -y && \
    wget https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip && \
    unzip protoc-3.5.1-linux-x86_64.zip -d /protoc && \
    echo export PATH=$PATH:/protoc/bin/ >> ~/.bashrc && \
    cat ~/.bashrc && \
    go get -u github.com/golang/protobuf/protoc-gen-go

