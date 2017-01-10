FROM fedora:25

MAINTAINER mian <gopher.mian@outlook.com>

ADD scollector .
ADD collectors ./collectors
ADD scollector.toml .
ADD jq /bin

ENTRYPOINT ["./scollector"]
