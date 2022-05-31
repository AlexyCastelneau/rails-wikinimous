require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  article = Article.new(
    title: Faker::Book.title,
    content: Faker::Fantasy::Tolkien.poem,
    subtitle1: Faker::Fantasy::Tolkien.character,
    paragraph1: Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false),
    subtitle2: Faker::Books::TheKingkillerChronicle.character,
    paragraph2: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false)
  )
  article.save
end
