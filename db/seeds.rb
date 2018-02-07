# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(name: "test1", description: "hello", price: 12.33, start_zone: "EST", end_zone: "EST", start_time: "10:00AM", end_time: "11:00PM", currency: "USD")
Product.create(name: "test2", description: "world", price: 15.33, start_zone: "EST", end_zone: "EST", start_time: "10:00AM", end_time: "11:00PM", currency: "USD")
Product.create(name: "test3", description: "I think", price: 100.15, start_zone: "EST", end_zone: "EST", start_time: "10:00AM", end_time: "11:00PM", currency: "USD")
Product.create(name: "test4", description: "Therefore I am", price: 120.34, start_zone: "EST", end_zone: "EST", start_time: "10:00AM", end_time: "11:00PM", currency: "USD")
User.create(email: "admin@test.com", password: "test1234", password_confirmation: "test1234", role: "admin")
User.create(email: "user@test.com", password: "test1234", password_confirmation: "test1234", role: "user")