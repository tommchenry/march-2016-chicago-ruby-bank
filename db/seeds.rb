# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do
  Moneyhole.create!(name: Faker::Company.name)
end

100.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

500.times do
  Account.create!(balance: 0, moneyhole_id: rand(1..5), user_id: rand(1..100))
end

500.times do 
  Transaction.create!(account_id: rand(1..500), balance_change: rand(-100..100))
end