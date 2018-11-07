FactoryBot.define do
  factory :blog, class: Blog do
    title { Faker::Name.name }
    body { Faker::Lorem.paragraph }
    topic_id { Topic.create!(title: 'New topic').id }
  end
end
