# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Article.create({title: 'あたらしい', content: 'すばらしいきじ'})
# Article.create({title: 'あたらしい2', content: 'すばらしいきじ2'})

#User.create!(email:  'abcd@abc.com', passwordk: 'password')
#User.create!(email:  'ab11@abc.com', passwordk: 'password')
jon = User.create!(email:  'john@example.com', password: 'password')
emily = User.create!(email:  'emily@example.com', password: 'password')

5.times do
  jon.articles.create!(
    title: Faker::Lorem.sentence(word_count: 5),
    content: Faker::Lorem.sentence(word_count: 100)
  )
end


5.times do
  emily.articles.create!(
    title: Faker::Lorem.sentence(word_count: 5),
    content: Faker::Lorem.sentence(word_count: 100)
  )
end
