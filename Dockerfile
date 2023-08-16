FROM ruby:latest

WORKDIR /app
ADD Gemfile Gemfile.lock /app
RUN bundle install
ADD ./ /app

ENV APP_ENV=production
ENV PORT=3000
CMD ["bundle", "exec", "ruby", "days_until.rb"]
