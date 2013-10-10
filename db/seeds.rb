require 'faker'

example_tags = []
tag1 = Tag.create(subject: Faker::Lorem.word)
tag2 = Tag.create(subject: Faker::Lorem.word)
example_tags << tag1.subject << tag2.subject

15.times do
  new_post = Post.create(title: Faker::Company.catch_phrase, body: Faker::Lorem.paragraph)
  new_post.tags.create(subject: example_tags.sample)
end