FactoryBot.define do
  factory :post do
    title { Faker::Company.bs }
    posted_at { Faker::Date.between(from: 6.weeks.ago, to: Date.today) }
  end
end
