FactoryGirl.define do
  factory :apartment do
    sequence(:external_id) { |n| n }

    floor
  end
end
