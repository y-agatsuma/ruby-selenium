FROM ruby:2.5

ADD Gemfile ./
ADD Gemfile.lock ./
RUN bundle install

RUN apt update
RUN apt install -y libnss3-dev

# ・For Latest Version
# RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` \
# RUN curl -O -L http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip

RUN curl -O -L http://chromedriver.storage.googleapis.com/2.46/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN rm chromedriver_linux64.zip
RUN mv chromedriver /usr/bin/chromedriver
