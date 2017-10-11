FactoryGirl.define do
  # Фабрика, создающая юзеров
  factory :user do
    sequence(:name) { "User#{rand(999)}" }

    sequence(:email) { |n| "email_#{n}@example.com" }

    after(:build) { |u| u.password_confirmation = u.password = "123456"}
  end
end
