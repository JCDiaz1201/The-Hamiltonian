# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(pseudonym: "Publius",
			email: "jcdiaz1201@gmail.com",
			password: "Lv1234567",
			password_confirmation: "Lv1234567",
			admin: true)

User.create!(pseudonym: "Roosevelt",
			email: "Roosevelt1858@gmail.com",
			password: "password1",
			password_confirmation: "password1",
			admin: true)

User.create!(pseudonym: "Churchill",
			email: "Churchill1874@gmail.com",
			password: "password2",
			password_confirmation: "password2",
			admin: true)

User.create!(pseudonym: "Frederick",
			email: "prussiagov@gmail.com",
			password: "passowrd3",
			password_confirmation: "passowrd3",
			admin: true)

User.create!(pseudonym: "Hamilton",
			email: "fatherofthenation@gmail.com",
			password: "password4",
			password_confirmation: "password4",
			admin: true)