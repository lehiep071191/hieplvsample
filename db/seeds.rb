# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create a main sample user.
User.create!(name: "Example User",

		email: "admin-lehiep@h.com",
		password: "123456",
		password_confirmation: "123456",
		diachi: "Vietnam",
		gioitinh: 1,
		sinhnhat: "1900/01/01",
		admin: true)
99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@railstutorial.org"
	password = "123456"
	User.create!(name: name,
	email: email,
	password: password,
	password_confirmation: password,
	diachi: "Vietnam",
	gioitinh: 1,
	sinhnhat: "1990/05/21"
	)
end
# Generate a bunch of additional users.

