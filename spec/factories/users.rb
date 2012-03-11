FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "email#{n}@gmail.org" }
    password 'password'
  end
end