FactoryBot.define do
  factory :blog, class: Blog do
    title { Faker::Name.name }
    body { Faker::Lorem.paragraph }
  end
end
