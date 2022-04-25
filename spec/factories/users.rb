FactoryBot.define do
  factory :user do
    email { Faker::Internet.safe_email }
    password { 'test123456' }    
  end
end
