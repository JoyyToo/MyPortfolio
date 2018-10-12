FactoryBot.define do
  factory :portfolio, class: Portfolio do
    title { Faker::Name.name }
    body { Faker::Lorem.paragraph }
  end
end
