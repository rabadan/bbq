FactoryGirl.define do
  factory :subscription do
    association :event
    association :user
    factory :subscription_guest do
      association :event
      user_name 'UserNameGuest'
      sequence(:user_email) { |n| "guest_email_#{n}@example.com" }
    end
  end
end
