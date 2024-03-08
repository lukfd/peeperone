# Compile
FROM golang as build

COPY ./src/ /src

WORKDIR /src

RUN CGO_ENABLED=0 GOOS=linux go build -o main

# Build
FROM scratch

COPY --from=build /src/main .

EXPOSE 8080 

CMD ["/main"]
