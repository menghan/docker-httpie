FROM ubuntu
MAINTAINER Christian Lück <christian@lueck.tv>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y httpie && apt-get clean
RUN locale-gen --lang zh_CN

ENTRYPOINT ["http"]
CMD ["--help"]
