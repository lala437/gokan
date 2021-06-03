FROM ubuntu:latest

MAINTAINER coldwarm7 "gokan"       

COPY . .                                       

EXPOSE 1235                                         

CMD ["./gokan"]      
