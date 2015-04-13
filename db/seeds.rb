# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


comedies = Category.create(name: "comedies")
dramas = Category.create(name: "dramas")
adventures = Category.create(name: "adventures")

Video.create(title: "Monk", 
	description: "my description of Monk",
	small_cover_url: "/tmp/monk.jpg",
	large_cover_url: "/tmp/monk.jpg",
	category: comedies)
Video.create(title: "Family Guy",
	description: "my description of Family Guy",
	small_cover_url: "/tmp/family_guy.jpg",
	large_cover_url: "/tmp/family_guy.jpg",
	category: dramas)
Video.create(title: "Futurama",
	description: "my description of Futurama",
	small_cover_url: "/tmp/futurama.jpg",
	large_cover_url: "/tmp/futurama.jpg",
	category: comedies)
Video.create(title: "South Park",
	description: "my description of South Park",
	small_cover_url: "/tmp/south_park.jpg",
	large_cover_url: "/tmp/south_park.jpg",
	category: comedies)
monk = Video.create(title: "Monk", 
	description: "my description of Monk",
	small_cover_url: "/tmp/monk.jpg",
	large_cover_url: "/tmp/monk.jpg",
	category: dramas)
Video.create(title: "Family Guy",
	description: "my description of Family Guy",
	small_cover_url: "/tmp/family_guy.jpg",
	large_cover_url: "/tmp/family_guy.jpg",
	category: comedies)
Video.create(title: "Futurama",
	description: "my description of Futurama",
	small_cover_url: "/tmp/futurama.jpg",
	large_cover_url: "/tmp/futurama.jpg",
	category: comedies)
Video.create(title: "South Park",
	description: "my description of South Park",
	small_cover_url: "/tmp/south_park.jpg",
	large_cover_url: "/tmp/south_park.jpg",
	category: comedies)
Video.create(title: "South Park",
	description: "my description of South Park",
	small_cover_url: "/tmp/south_park.jpg",
	large_cover_url: "/tmp/south_park.jpg",
	category: comedies)

sam = User.create(full_name: "Sam Singer", email: "samsingerjr@gmail.com", password: "1234")

Review.create(user: sam, video: monk, rating: 5, content: "This is a really good video!")
Review.create(user: sam, video: monk, rating: 2, content: "Not so good the second time")

 