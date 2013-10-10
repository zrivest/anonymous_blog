require 'faker'


tag1 = Tag.create()

15.times do
  Post.create(title: Faker::Company.catch_phrase, body: Faker::Lorem.paragraph)
end