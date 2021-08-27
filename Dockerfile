FROM ruby:3.0.2

LABEL maintainer="chris@vaxcalc.org"

# Keep in one RUN command with packages listed one per line in alphabetical order.
# This makes sure we get the latest repo info at the same time.
#
# RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
#  nodejs \
#  vim 

# This creates a seperate, independent layer. Cache for this layer busted ONLY if 
# Gemfile or Gemfile.lock changes
COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

# Source files are in separate layer from Gems. Helps keep build fast.
COPY . /usr/src/app/

CMD ["bin/rails", "s", "-b", "0.0.0.0"]