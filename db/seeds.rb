# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  user = User.create(name: "John Doe##{i}", bio: "Ruby on Rails, or Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer and HTML, CSS and JavaScript for user interfacing. In addition to MVC, Rails emphasizes the")
  5.times do |j|
    post = Post.create(title: "A beautiful day", text: "Lorem Ipsum Dolor Amet Dolores ", user: user)
    5.times do |j|
      Comment.create(text: "Comment ##{j}", post: post, user: user)
    end
  end
end

