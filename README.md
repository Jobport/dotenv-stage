# Dotenv-Stage
![Run lint](https://github.com/Jobport/dotenv-stage/workflows/Run%20lint/badge.svg)

A small wrapper around the [dotenv gem](https://rubygems.org/search?query=dotenv) that will make sure to load
.env.development and .env.development, or .env.production and .env.production.local. To decide which set of
files to look for it uses the environment variable STAGE that is set on all our servers. If it cannot find
that it will use RAILS_ENV.

It basically does the same thing as [dotenv-rails](https://rubygems.org/gems/dotenv-rails) does for Rails apps
for all other apps. (dotenv-rails uses some modules and classes that are Rails specific.)
