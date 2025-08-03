source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.2"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"
# Use sqlite3 as the database for Active Record
gem "sqlite3", ">= 2.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# An OmniAuth strategy to log in with Auth0. 
gem 'omniauth-auth0', '~> 3.1.1'

# Prevents forged authentication requests
gem 'omniauth-rails_csrf_protection', '~> 1.0'

# Gem Repost implements Redirect using POST method. https://vergilet.github.io/repost/ 
gem 'repost'

# A ruby implementation of the RFC 7519 OAuth JSON Web Token (JWT) standard. https://github.com/jwt/ruby-jwt
gem 'jwt'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  gem "dotenv-rails", "~> 3.1.8"

  gem "pry"
end
