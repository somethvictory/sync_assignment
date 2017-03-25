FactoryGirl.define do
  factory :resident do
    sequence(:external_id) { |n| n }
    first_name   FFaker::Name.first_name
    last_name    FFaker::Name.last_name
    email        FFaker::Internet.email
    phone_number FFaker::PhoneNumber.phone_number

    apartment
  end
end
