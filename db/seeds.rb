# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
  {
    name: "cute"
  },
  {
    name: "funny"
  },
  {
    name: "sad"
  },
  {
    name: "heart-warming"
  }
])

posts = Post.create([
  {
    title: "This is a Dog",
    content: "dogs are so cute"
  },
  {
    title: "What to do?",
    content: "life can be sad"
  },
  {
    title: "US",
    content: "US sees some crazy stuff"
  },
  {
    title: "Apples",
    content: "apples belong in apple pie"
  }
])

users = User.create([
  {
    username: "peanuts",
    email: "peanuts@yahoo.com"
  },
  {
    username: "lazy",
    email: "lazy@gmail.com"
  },
  {
    username: "horses",
    email: "horses@yahoo.com"
  },
  {
    username: "lifeisgood",
    email: "lifeisgood@gmail.com"
  }
])

comments = Comment.create([
  {
    content: "this sucks",
    user_id: 1,
    post_id: 1
  },
  {
    content: "so so",
    user_id: 1,
    post_id: 1
  },
  {
    content: "ok, cool",
    user_id: 2,
    post_id: 2
  },
  {
    content: "let's go!",
    user_id: 2,
    post_id: 3
  }
])

post_categories = PostCategory.create([
  {
    post_id: 1,
    category_id: 1
  },
  {
    post_id: 1,
    category_id: 2
  },
  {
    post_id: 2,
    category_id: 1
  },
  {
    post_id: 3,
    category_id: 1
  }
])