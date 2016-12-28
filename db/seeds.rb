# This file should contain all the record creation needed to seed the
# database with its default values. The data can then be loaded with
# the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

default_content = "Lorem ipsum scelerisque quam primis enim vestibulum dapibus hac, turpis faucibus pellentesque euismod tristique feugiat ultricies commodo congue facilisis id magna placerat hendrerit suscipit eleifend ligula fames curae, quis etiam metus ut vulputate nam fusce nunc neque primis pellentesque vestibulum lobortis pellentesque eget lobortis maecenas pellentesque, vitae venenatis quam nullam venenatis, imperdiet bibendum eros taciti elit.

Iaculis netus massa egestas integer nostra nisi ligula magna a nostra, aenean cras sagittis iaculis pharetra euismod potenti vehicula curabitur dictum, adipiscing egestas sit adipiscing neque dapibus metus nibh rutrum turpis ac iaculis molestie et aliquet eu enim quisque tristique dapibus, faucibus suscipit at congue metus elit fusce mattis aliquet turpis aliquam tempor id curabitur himenaeos ut, sagittis cursus curabitur nullam mattis scelerisque curabitur, blandit volutpat auctor inceptos congue lobortis.

Faucibus placerat cursus mauris eu mauris at ac lectus, malesuada litora feugiat vel dictum lorem suspendisse condimentum ligula, pretium aenean nisl etiam nunc neque nullam egestas at turpis nec dictumst nibh eleifend mi, commodo phasellus lectus ac arcu hac aliquam mi, conubia metus netus nunc tortor per consectetur etiam porttitor eleifend sit egestas dui inceptos aliquam phasellus aenean fusce.

Iaculis netus massa egestas integer nostra nisi ligula magna a nostra, aenean cras sagittis iaculis pharetra euismod potenti vehicula curabitur dictum, adipiscing egestas sit adipiscing neque dapibus metus nibh rutrum turpis ac iaculis molestie et aliquet eu enim quisque tristique dapibus, faucibus suscipit at congue metus elit fusce mattis aliquet turpis aliquam tempor id curabitur himenaeos ut, sagittis cursus curabitur nullam mattis scelerisque curabitur, blandit volutpat auctor inceptos congue lobortis.

Faucibus placerat cursus mauris eu mauris at ac lectus, malesuada litora feugiat vel dictum lorem suspendisse condimentum ligula, pretium aenean nisl etiam nunc neque nullam egestas at turpis nec dictumst nibh eleifend mi, commodo phasellus lectus ac arcu hac aliquam mi, conubia metus netus nunc tortor per consectetur etiam porttitor eleifend sit egestas dui inceptos aliquam phasellus aenean fusce."

User.create!(pseudonym: "Publius",
			email: "jcdiaz1201@gmail.com",
			password: "Lv1234567",
			password_confirmation: "Lv1234567",
			admin: true)

User.create!(pseudonym: "Trolololol",
			email: "Roosevelt1858@gmail.com",
			password: "password1",
			password_confirmation: "password1",
			admin: false)

User.create!(pseudonym: "Churchill",
			email: "Churchill1874@gmail.com",
			password: "password2",
			password_confirmation: "password2",
			admin: false)

User.create!(pseudonym: "Frederick",
			email: "prussiagov@gmail.com",
			password: "passowrd3",
			password_confirmation: "passowrd3",
			admin: false)

User.create!(pseudonym: "Hamilton",
			email: "fatherofthenation@gmail.com",
			password: "password4",
			password_confirmation: "password4",
			admin: false)



post1 = Post.create!(user_id: 1,
			title: "We're on the Wrong Track: Here is Why",
			content: "#{default_content}",
			photo: File.new('app/assets/images/tracks.jpg'))

post2 = Post.create!(user_id: 1,
			title: "No Other Country is better Positioned for the 21st Century",
			content: "#{default_content}",
			photo: File.new('app/assets/images/nyc.jpg'))

post3 = Post.create!(user_id: 1,
			title: "Are China-US Relations Destined for Conflict?",
			content: "#{default_content}",
			photo: File.new('app/assets/images/war.jpg'))

post4 = Post.create!(user_id: 1,
			title: "Britain has left the EU and that is Tragic",
			content: "#{default_content}",
			photo: File.new('app/assets/images/brexit.jpg'))

post5 = Post.create!(user_id: 1,
			title: "We Should be Easing Relations with Russia",
			content: "#{default_content}",
			photo: File.new('app/assets/images/diplomacy.jpg'))


post6 = Post.create!(user_id: 1,
			title: "America must Decide what kind of Country it Wants to Be",
			content: "#{default_content}",
			photo: File.new('app/assets/images/road.jpg'))


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
				content: "Let us make our own posts!")

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


















