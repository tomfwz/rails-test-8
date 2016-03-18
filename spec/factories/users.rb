FactoryGirl.define do
  factory :user do
    name          'Tom'
    password      '123123123'
    email         { |n| "user-#{n}@example.com" }
    avatar        File.open("#{Rails.root}/app/assets/images/users/avatars/medium/missing.png")
    display_name  'Tom Ta'
    designation   'Developer'
    dob           23.years.ago
    address       '1/4D Ba Trieu, Ap Dinh, Tan Xuan, Hoc Mon'
    city          'Ho Chi Minh'
    gender        'male'
    mobile_number '01675166477'
  end
end