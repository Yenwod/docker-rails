# README

## Containerize your Rails application

This project illustrates how to containerize your Rails application, starting with Rails 7.alpha, based upon DHH's demo of [Alpha preview: Modern JavaScript in Rails 7 without Webpack](https://www.youtube.com/watch?v=PtxZvFnL2i0)

Highly recommended readings: 
1. Rails PR [Replace Webpacker with importmapped Hotwire as default JavaScript setup](https://github.com/rails/rails/pull/42999)
2. [Modern web apps without JavaScript bundling or transpiling](https://world.hey.com/dhh/modern-web-apps-without-javascript-bundling-or-transpiling-a20f2755)

I've been working with Rails since 2010, and this is - by far - the version that I am most excited about.  Rails has fully embraced modern Javascript and provide developers with a simple _and_ powerful way to leverage modern browsers.  

## Requirements

Docker installed on your Mac.  

## Steps 

(from your Mac terminal)

```bash
$ docker run -i -t --rm -v ${PWD}:/usr/src/app ruby:3.0.2 bash
```
(from within the new container)

```bash
cd /usr/src/app
touch Gemfile 
```
(from your code editor on your Mac, add to Gemfile)

```ruby
source 'https://rubygems.org'

gem 'rails', github: 'rails/rails'
```

(from within the container)

```bash
bundle install 
bundle exec rails new . --dev 
```

(from your Mac terminal)

Copy Dockerfile and .dockerignore into your working directory

```bash
$ wget https://raw.githubusercontent.com/Yenwod/docker-rails/master/Dockerfile .
$ wget https://raw.githubusercontent.com/Yenwod/docker-rails/master/.dockerignore .
```

Update Gemfile.lock (or else running the container will fail because we are pulling Rails from github)

```bash
$ bundle install 
```

Build the container

```bash
$ docker build -t rails-7.alpha-app:0.1 .
```

Run your Rails server

```bash
$ docker run -p 3000:3000 rails-7.alpha-app:0.1 
```

Point your browser to [http://localhost:3000/](http://localhost:3000) and you should see Yay! You’re on Rails!

## Security

Warning! The image you just created probably has many vulnerabilities.  Let's find out:

```bash
$ docker scan rails-7.alpha-app:0.1  
```

## Rails command examples

List Rails tasks

```bash
$ docker run -rm rails-7.alpha-app:0.1 bin/rails -T
```

Show help for ```rails new```

```bash
$ docker run -rm rails-7.alpha-app:0.1 bin/rails new --help
```

## Push to Docker Hub

Example of command format to tag and push.

```bash
$ docker tag rails-7.alpha-app:0.1 cdowney68/rails-7.alpha-app:0.1
$ docker push cdowney68/rails-7.alpha-app:0.1
```

## Run the container without building it yourself

```bash
$ docker run -p 3000:3000 cdowney68/rails-7.alpha-app:0.1
```

## Docker home

[https://hub.docker.com/r/cdowney68/rails-7.alpha-app](https://hub.docker.com/r/cdowney68/rails-7.alpha-app)
