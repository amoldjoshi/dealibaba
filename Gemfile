source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'rails', '~> 5.2.2', '>= 5.2.2.1'


#Amol added these gems----start 1
group :development do
  gem 'sqlite3', git: "https://github.com/larskanis/sqlite3-ruby", branch: "add-gemspec"
end

group :production do
  gem 'pg'
end
#--------end1

group :development do
 gem 'better_errors', '~> 2.5', '>= 2.5.1'
 gem 'binding_of_caller', '~> 0.8.0'
end

#Amol added following gems-----
gem 'cancancan', '~> 2.3'
gem 'bootstrap', '~> 4.3', '>= 4.3.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'simple_form', '~> 4.1'
gem 'popper_js', '~> 1.14', '>= 1.14.5'
gem 'tether-rails', '~> 1.4'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'

#Amol added the cmment for the gemfile from the golfcourse westchester.
gem 'image_processing', '~> 1.2'

#----end

#Amol added following gems.....
gem 'aws-sdk', '~> 3.0', '>= 3.0.1'
gem "aws-sdk-s3", require: false
gem 'image_processing', '~> 1.2'
gem 'devise', '~> 4.6', '>= 4.6.2'
#---------


gem 'sassc'

# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
#gem 'duktape' #Amol removed for ExecJS:: Program error.
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
