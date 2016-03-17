FactoryGirl.define do
  factory :user do
    name      'Tom'
    password  '123123123'
    email     { |n| "user-#{n}@example.com" }
    avatar    File.open("#{Rails.root}/app/assets/images/users/avatars/medium/missing.png")
  end
end