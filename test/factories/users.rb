FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "fsldkjfsldkjf23"
    password_confirmation "fsldkjfsldkjf23"
    admin true
  end
end
