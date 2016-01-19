# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	5.times do 
		article1 = {}
		article2 = {}
		2.times do
			article1 = Article.create({
				:title => FFaker::Company.bs,
				:content => FFaker::HipsterIpsum.phrase
				})
			article2 = Article.create({
				:title => FFaker::Company.bs,
				:content => FFaker::HipsterIpsum.phrase
				})
		end

		user = User.create({
			:last_name => FFaker::Name.last_name,
			:first_name => FFaker::Name.first_name,
			:email => FFaker::Internet.email,
			:password => FFaker::Internet.domain_word
			})

	 	user.articles << article1
	 	user.articles << article2 
	end

