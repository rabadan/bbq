source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 5.2.4'
gem 'rails-i18n', '~> 5.1'

gem 'resque', '~> 1.27'

gem 'uglifier', '>= 1.3.0'

gem 'devise'
gem 'devise-i18n'

gem 'twitter-bootstrap-rails', '~> 4.0'
gem 'font-awesome-rails', '~> 4.7'
gem 'jquery-rails', '~> 4.3'
gem 'coffee-rails', '~> 4.2'
gem 'simple_form'
gem 'carrierwave', '~> 1.0'
gem 'rmagick', '~> 2.16'
gem 'fog-aws', '~> 1.4.1'

gem 'puma', '~> 3.7'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'rspec-rails', '~> 3.4'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'capistrano', '~> 3.9'
  gem 'capistrano-rails', '~> 1.3'
  gem 'capistrano-passenger', '~> 0.2'
  gem 'capistrano-rbenv', '~> 2.1'
  gem 'capistrano-bundler', '~> 1.3'
  gem 'capistrano-resque', '~> 0.2.2', require: false

  gem 'letter_opener'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'capybara'
  gem 'launchy'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
