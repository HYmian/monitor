FROM fluent/fluentd:v1.0

# below RUN includes plugin as examples elasticsearch is not required
# you may customize including plugins as you wish

RUN apk add --update --virtual .build-deps \
                                sudo \
                                build-base \
                                ruby-dev \
                                tzdata \
    && sudo gem install fluent-plugin-elasticsearch \
    && sudo gem sources --clear-all \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/* \
              /home/fluent/.gem/ruby/2.3.0/cache/*.gem
           
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENTRYPOINT ["fluentd", "-c", "/fluentd/etc/fluent.conf", "-p", "/fluentd/plugins"]
