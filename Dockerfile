FROM rails:4.1.8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY Gemfile /usr/src/app/
ONBUILD RUN bundle install
ONBUILD COPY . /usr/src/app

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server"]
