FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.paragraph }
    user { User.create!(name: Faker::Internet.name, email: Faker::Internet.email, password: Faker::Internet.password) }
    blog { Blog.create!(title: Faker::Lorem.title, body: Faker::Lorem.paragraph) }
  end
end
