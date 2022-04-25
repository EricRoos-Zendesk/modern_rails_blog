FactoryBot.define do
  factory :post do
    title { Faker::Company.bs }
    posted_at { Faker::Date.between(from: 6.weeks.ago, to: Date.today) }
    content { [Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false), Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)].join('<br/>') }
    user
  end
end
