# Dockerfile
FROM ruby:3.1

WORKDIR /app
COPY . .

# Only install bundler if you have a Gemfile
RUN gem install bundler || true

ENV APP_THEME_COLOR=skyblue
CMD ["irb"]