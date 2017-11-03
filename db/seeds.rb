# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |index|
  Person.create!(name: Faker::Name.name, phone: Faker::PhoneNumber.cell_phone, age: rand(10..90))

end

20.times do |index|
  Book.create!(title: Faker::Book.title, isbn: Faker::Code.isbn)
end
