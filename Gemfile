source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "rails", "~> 7.0.1"
gem "puma", "~> 5.0"
gem "bootsnap", require: false

gem 'selenium-webdriver', '~> 4.1'

# gem "redis", "~> 4.0"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "spring"
end
