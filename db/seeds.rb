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

Post.create!(user_id: 1,
			title: "This is a new post",
			content: "This post has been made, and thank god lol")

Post.create!(user_id: 1,
			title: "title",
			content: "This is what I can do")

Post.create!(user_id: 2,
			title: "I am Roosevelt",
			content: "Hello World!")

Post.create!(user_id: 3,
			title: "I am Winston",
			content: "And I am awesome")

Post.create!(user_id: 5,
			title: "This is it....",
			content: "Zulton!")

Post.create!(user_id: 4,
			title: "Maybe?",
			content: "Maybe not")

Comment.create!(user_id: 1,
				post_id: 3,
				content: "Hmmm I guess so")

Comment.create!(user_id: 1,
				post_id: 4,
				content: "I completely disagree")

Comment.create!(user_id: 1,
				post_id: 5,
				content: "Holy cow!")

Comment.create!(user_id: 3,
				post_id: 5,
				content: "No fox, no hunt")

Comment.create!(user_id: 3,
				post_id: 2,
				content: "Kanye is one crazy dude")

Comment.create!(user_id: 4,
				post_id: 2,
				content: "The cake is a lie...")

Comment.create!(user_id: 5,
				post_id: 1,
				content: "This is somewhat ok")

Comment.create!(user_id: 5,
				post_id: 1,
				content: "Oh wait nvm now I get it. Its awesome!")

Comment.create!(user_id: 5,
				post_id: 2,
				content: "Dude, this is wack")

Comment.create!(user_id: 5,
				post_id: 3,
				content: "Hook'em Horns!")

Comment.create!(user_id: 5,
				post_id: 5,
				content: "Leggo1")


















