FactoryBot.define do
  factory :event do
    sequence(:title) { "Event Test #{rand(999)}" }
    address { "Event address street" }
    sequence(:datetime) { Date.new(2017, 9, 1) }
    pincode { 1234 }
    association :user
  end
end
