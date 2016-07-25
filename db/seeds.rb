require './models/user'
require './models/brand'
require './models/category'
require './models/product'
require 'faker'

(1..100).each do |i|
  User.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: Faker::Internet.password,
  cc_number: Faker::Business.credit_card_number
  )
end

(1..20).each do |j|
  Brand.create(
  name: Faker::App.name
  )
end

(1..10).each do |k|
  Category.create(
  name: Faker::Hipster.word
  )
end

@brand_ids = Brand.pluck(:id)
@category_ids = Category.pluck(:id)

(1..100).each do |l|
  Product.create(
  name: Faker::Commerce.product_name,
  brand_id: @brand_ids.sample,
  category_id: @category_ids.sample,
  price: Faker::Commerce.price
  )
end
