FROM alpine

RUN apk add --update g++

WORKDIR /myApp

COPY srccode.cpp .

RUN g++ -o myapp srccode.cpp

CMD [ "./myapp" ]