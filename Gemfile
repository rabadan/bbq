source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'rails-i18n'

gem 'uglifier', '>= 1.3.0'

gem 'devise'
gem 'devise-i18n'

gem 'twitter-bootstrap-rails'
gem 'font-awesome-rails'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.2'
gem 'simple_form'
gem 'carrierwave', '~> 1.0'
gem 'rmagick'
gem 'fog-aws'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
