source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

  
#gem 'bootstrap-sass'
gem 'sass-rails', '~> 5.0'
gem "pdf-reader"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# Use sqlite3 as the database for Active Record
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'modernizr-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# по-сторiнкова навiгацiя
gem 'will_paginate',  '~> 3.1.0'
# загрузка картинок
gem 'paperclip'
#Devise {autorisation}
gem 'devise'
# мейлер
gem 'mailboxer'
# адмінка
gem 'activeadmin'

# для мейлера
gem 'chosen-rails'
gem 'jquery-turbolinks'

#авторизація
#omni
gem 'omniauth-oauth2'
#facebook_login
gem 'omniauth-facebook'
#google_login
gem 'omniauth-google-oauth2'
#github_login
gem 'omniauth-github'
gem 'activerecord-session_store'
#for https
#gem 'thin'

group :development do
  gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'dotenv'
  #діаграми
  gem 'ruby-graphviz', '~> 1.2', '>= 1.2.2'
  gem 'railroady'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'acts_as_votable', '~> 0.10.0'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

gem "rails-i18n"