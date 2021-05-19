source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'simple_form'
gem 'bootstrap', '>= 4.3.1'
gem 'haml-rails'
gem 'devise'
gem 'kaminari'
gem 'fog-aws'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
gem 'mastodon-api', require: 'mastodon'
gem 'omniauth-mastodon'
gem 'omniauth'
gem 'acts_as_list'
gem 'cocoon'
gem 'webpacker', '~> 4.0'
gem 'acts-as-taggable-on', '~> 6.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.7'
  gem 'factory_bot_rails', '~> 4.11.1'
  gem 'dotenv-rails'
end

group :test do
  gem 'webdrivers', '~> 3.0'
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
end

group :development do
  gem 'letter_opener'
  gem 'rack-mini-profiler'
  gem 'bullet'
  gem 'rails_best_practices'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
