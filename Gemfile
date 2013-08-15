source 'http://rubygems.org'

gem 'rails', '3.0.19'
gem 'mysql2', '~>0.2.11'
gem 'i18n', '~>0.5.0'

gem "rails3-generators"
gem "jquery-rails"
gem 'fancybox-rails'
gem 'pdfkit', :git => "https://github.com/huerlisi/PDFKit.git"
gem "devise"
gem "cancan", "~>1.6.5"
gem 'web-app-theme', '~> 0.7.0'

#fixes for bundle dependency bullshit
gem 'rack', '~>1.2.3'
gem 'rake', '~>0.9.2'

group :production do
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano-multiconfig'
  gem "rvm-capistrano"
end

group :development, :test do
  gem "rspec", "~> 2.6.0"
  gem "rspec-rails", "~> 2.6.0"
  gem "autotest"
  gem "autotest-rails"
  gem "autotest-growl"
  gem "spork", "~>0.9.0.rc8"
  gem "railroady", "~> 1.0.4" #fix for rails generate scaffold
  gem "mailcatcher"
  gem 'guard', '~> 0.5.1'
  gem 'guard-bundler', '~> 0.1.3'
  gem 'guard-ego',     '~> 0.0.1'
  gem 'guard-rspec',   '~> 0.4.0'
  gem 'guard-spork',   '~> 0.2.1'
  gem 'factory_girl_rails'
end
