# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Post.destroy_all
# User.destroy_all
# 10.times do |i|
#    u = User.create!(name: 'User #{i}', email: 'email#{i}@gmail.com', password:'123456')
#    po = Post.create!(title: 'post #{i}', content: 'contenido #{i}', user: u )
#    10.times do |j|
#     c= po.comments.build(content:' comentario#{j} del post#{i}, user:u, post:p')
#     c.save
#    end
# end
User.create!(name: 'ta', email: 'ta@gm.com', password: '123456', role: 0)
