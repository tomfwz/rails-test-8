FactoryGirl.define do
  factory :post do
    title     'I love Ruby'
    content   'Ruby is awesome...'
    user     { user }
  end
end