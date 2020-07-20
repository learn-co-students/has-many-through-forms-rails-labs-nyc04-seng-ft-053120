# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
Comment.destroy_all
PostCategory.destroy_all
Post.destroy_all
User.destroy_all

Category.create([
  {name: "humor"},
  {name: "recent events"},
  {name: "food"}
])

Post.create([
  {title: "we love america!", content: "just kidding"},
  {title: "covid19 testing centers", content: "here is a list of covid19 testing centers in nyc"},
  {title: "make your own chicken pot pies", content: "here is the recipe on how you can make your very own simple chicken pot pie!!!!"}
])

User.create([
  {username: "fluffy", email: "fluffy@fluffy.come"},
  {username: "georgie_jr", email: "georgie_jr@georgie_jr.come"},
  {username: "pepe", email: "pepe@pepe.com"}
])

puts "All done seeding!!!!!"