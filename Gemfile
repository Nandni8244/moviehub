source 'https://rubygems.org'

ruby '3.3.5'  # Specify your Ruby version

gem 'rails', '~> 7.0'

# Database gems
gem 'pg', '~> 1.1', group: :production  # PostgreSQL for Heroku
gem 'sqlite3', '~> 1.4', group: [:development, :test]  # SQLite for local dev

# Assets and JS
gem 'sass-rails', '~> 5.1'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'

# Debugging / development
group :development, :test do
  gem 'byebug'
  gem 'web-console', '>= 3.3.0'
end

# Required for Windows (tzinfo errors)
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Optional gems for docs
gem 'sdoc', '~> 0.4.0', group: :doc
