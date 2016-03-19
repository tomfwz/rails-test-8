FactoryGirl.define do
  factory :comment do
    message 'I want to hire you!'
    association :user, factory: :user
  end
end