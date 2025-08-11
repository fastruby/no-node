FROM ruby:3.4.2

WORKDIR /code

RUN gem install foreman

COPY . .

RUN bundle install
RUN ./bun install

EXPOSE 3000