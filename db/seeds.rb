# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file .env file.

require 'faker'

30.times do
  product_name = Faker::Commerce.product_name
  Product.create!(name: product_name,
                  description: Faker::Hacker.say_something_smart,
                  price: (Faker::Commerce.price.to_f * 100).to_i,
                  permalink: Faker::Lorem.words,
                  image: "http://loremflickr.com/640/480/#{product_name.split.last.downcase}")
end
