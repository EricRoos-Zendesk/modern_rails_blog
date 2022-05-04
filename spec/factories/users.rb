FactoryBot.define do
  factory :user do
    email { Faker::Internet.safe_email }
    password { 'test123456' }    

    transient do
      roles { [] }
      post_count { 0 }
    end

    after :create do | user, options|
      options.roles.each do |role|
        user.add_role role
      end
      create_list :post, options.post_count, user: user if options.post_count
    end

    ## Sub Factories
    
    factory :author do
      roles { [ Role::AUTHOR ] }
    end

    factory :moderator do
      roles { [ Role::MODERATOR ] }
    end

    factory :admin do
      roles { [ Role::ADMIN ] }
    end
  end
end
