FROM ruby:alpine

WORKDIR /document

VOLUME ["/document"]

RUN gem install asciidoctor-pdf --pre && \
    gem install rouge && \
    gem install pygments.rb && \
    gem install coderay && \
    gem install asciidoctor-diagram \
	&& rm -rf /usr/local/bundle/cache/*.gem \
	&& find /usr/local/bundle/gems/ -name "*.c" -delete \
	&& find /usr/local/bundle/gems/ -name "*.o" -delete

ENTRYPOINT ["asciidoctor-pdf"]
