FactoryGirl.define do
  factory :floor do
    sequence(:number) { |n| n }

    building
  end
end
