FactoryGirl.define do
  factory :profile do
    display_name  'Tom Ta'
    designation   'Developer'
    dob           23.years.ago
    address       '1/4D Ba Trieu, Ap Dinh, Tan Xuan, Hoc Mon'
    city          'Ho Chi Minh'
    gender        'male'
    mobile_number '01675166477'
    user          { user}
  end
end