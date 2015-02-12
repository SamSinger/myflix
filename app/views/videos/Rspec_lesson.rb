The gem is rspec-rails-2
https://github.com/rspec/rspec-rails

gem install rspec-rails

in Gemfile:

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end

Then:
bundle


Then:
rails g rspec:install

#Behavior driven test
#What do you want to specifiy that the model should do?
Model should save itself.

it is a key word

3 steps
data
perform action
verify

.should is rspec

== is the matcher

from Lynda
given, when, Then
























