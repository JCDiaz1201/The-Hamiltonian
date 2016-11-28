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
			admin: true,
			activated: true,
			activated_at: Time.zone.now)
