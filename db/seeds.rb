# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

default_content = "Lorem ipsum scelerisque quam primis enim vestibulum dapibus hac, turpis faucibus pellentesque euismod tristique feugiat ultricies commodo congue facilisis id magna placerat hendrerit suscipit eleifend ligula fames curae, quis etiam metus ut vulputate nam fusce nunc neque primis pellentesque vestibulum lobortis pellentesque eget lobortis maecenas pellentesque, vitae venenatis quam nullam venenatis, imperdiet bibendum eros taciti elit.

Iaculis netus massa egestas integer nostra nisi ligula magna a nostra, aenean cras sagittis iaculis pharetra euismod potenti vehicula curabitur dictum, adipiscing egestas sit adipiscing neque dapibus metus nibh rutrum turpis ac iaculis molestie et aliquet eu enim quisque tristique dapibus, faucibus suscipit at congue metus elit fusce mattis aliquet turpis aliquam tempor id curabitur himenaeos ut, sagittis cursus curabitur nullam mattis scelerisque curabitur, blandit volutpat auctor inceptos congue lobortis.

Faucibus placerat cursus mauris eu mauris at ac lectus, malesuada litora feugiat vel dictum lorem suspendisse condimentum ligula, pretium aenean nisl etiam nunc neque nullam egestas at turpis nec dictumst nibh eleifend mi, commodo phasellus lectus ac arcu hac aliquam mi, conubia metus netus nunc tortor per consectetur etiam porttitor eleifend sit egestas dui inceptos aliquam phasellus aenean fusce.

Nunc sodales iaculis sollicitudin vestibulum habitant orci sagittis torquent, hac cras ut interdum malesuada dictumst integer quisque hac, quam etiam rhoncus fusce curabitur aliquam gravida inceptos donec tempus eleifend cursus gravida consequat orci proin, cubilia ut purus habitant ad tempus vel dapibus, vitae nunc egestas tortor dapibus metus feugiat cras in vulputate est dictum rhoncus purus.

Luctus molestie leo torquent a mauris semper potenti etiam cursus etiam, semper ac sagittis a maecenas aliquet feugiat sit nam condimentum hac, consectetur tincidunt leo consequat conubia phasellus non eget lobortis posuere a turpis vulputate justo porta blandit at augue torquent suscipit, facilisis ipsum nullam primis orci mauris vel fusce senectus mattis, porta non massa posuere torquent a sodales porttitor risus consectetur pharetra sapien lacus fringilla malesuada etiam odio elit.

Nisi morbi tristique id curabitur hendrerit eget nisi nec fusce senectus varius, tempus diam pellentesque quis etiam sapien ullamcorper in ut inceptos iaculis congue, nibh cursus at rutrum fermentum et aenean nam ut nam morbi potenti lacus ligula ut sapien rutrum netus porttitor risus, dui risus vehicula feugiat cursus turpis class fames donec mauris, fames netus curae convallis rhoncus nisi eget inceptos.

Cras vitae lacus vestibulum iaculis felis taciti mollis torquent purus, mollis porttitor vitae vulputate consequat dapibus lorem magna risus, cursus lacus mi blandit dui himenaeos felis vel condimentum dolor augue pretium id metus proin, turpis pulvinar vivamus phasellus aliquam, sed vitae purus tincidunt neque at nullam vitae dui faucibus diam venenatis magna commodo, laoreet aliquet egestas lobortis ligula luctus malesuada.

Lorem urna habitasse dui id urna posuere interdum aenean eget tortor lorem taciti velit hendrerit, torquent interdum erat venenatis sem eros a est rutrum phasellus tellus eget ullamcorper lobortis gravida felis nec gravida primis odio lobortis nulla suspendisse eu ligula ut, maecenas vulputate leo enim fusce quam iaculis interdum lectus suscipit pretium metus, aenean non et porttitor tellus himenaeos phasellus morbi condimentum donec potenti mauris ac faucibus mattis ante lobortis.

Odio augue in erat dolor et dapibus eleifend, lacinia quam sociosqu mattis facilisis ornare id, erat varius auctor egestas euismod ut proin nibh malesuada odio donec nec habitasse velit lorem fames, non aliquet donec commodo rhoncus purus ullamcorper convallis fusce, vitae volutpat aenean vitae donec ut venenatis imperdiet commodo adipiscing hendrerit sapien inceptos class nullam, dictum ullamcorper dapibus est hendrerit tortor curabitur, ac mauris porta aenean quisque.

Felis fringilla ut urna lorem in fames tellus curae inceptos, ut praesent nisl vehicula scelerisque praesent placerat eget, fames pellentesque justo laoreet torquent egestas mauris volutpat nec litora lobortis accumsan sit donec netus tincidunt dui elit, nam taciti aliquet lacinia senectus vestibulum dictumst platea quam, sapien hendrerit orci ultricies sollicitudin bibendum nunc litora a fermentum convallis placerat maecenas consequat, lacus massa sodales aliquam ut quisque, viverra ornare etiam sem.

Torquent varius posuere proin pretium vitae sagittis turpis felis, curabitur pretium netus quis habitasse gravida semper luctus lacus, sagittis phasellus at suscipit libero curabitur convallis odio luctus vel interdum nullam gravida aliquam donec vehicula, nisi quisque conubia duis potenti etiam convallis adipiscing tortor, turpis habitasse hendrerit at congue dolor eleifend elementum inceptos consequat metus nisl nostra curae aliquam massa, torquent risus porta condimentum blandit iaculis curabitur proin, aliquam quam facilisis sagittis sapien consequat lorem aptent egestas vel ut dolor."

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
			title: "We're on the Wrong Track: Here is Why",
			content: "#{default_content}")

Post.create!(user_id: 1,
			title: "We're On the Tight Track: Stay the Course",
			content: "#{default_content}")

Post.create!(user_id: 2,
			title: "Are China-US Relations Destined for Conflict?",
			content: "#{default_content}")

Post.create!(user_id: 3,
			title: "Britain has left the EU and that is Tragic",
			content: "#{default_content}")

Post.create!(user_id: 5,
			title: "We Should be Easing Relations with Russia",
			content: "#{default_content}")

Post.create!(user_id: 4,
			title: "America must Decide what kind of Country it Wants to Be",
			content: "#{default_content}")

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


















