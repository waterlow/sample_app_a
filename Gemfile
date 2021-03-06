source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.3"

gem "babel-transpiler"
gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap", "~> 4.1.3"
gem "hamlit"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "mini_magick"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.2"
gem "sass-rails", github: "rails/sass-rails"
gem "sorcery"
gem "sprockets-rails", github: "rails/sprockets-rails", require: "sprockets/railtie"
gem "sprockets", "4.0.0.beta8"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "will_paginate-bootstrap4"
gem "will_paginate"

group :development, :test do
  gem "pry-rails"
  gem "pry-byebug"
  gem "faker"
end

group :development do
  gem "rubocop-performance"
  gem "erb2haml"
  gem "haml_lint", require: false
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "seed-fu", "~> 2.3"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "spring"
  gem "standard"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "guard-minitest"
  gem "guard"
  gem "minitest-reporters"
  gem "minitest"
  gem "rails-controller-testing"
  gem "selenium-webdriver"
end

group :production do
  gem "aws-sdk-s3", require: false
end
