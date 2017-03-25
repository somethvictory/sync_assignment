FactoryGirl.define do
  factory :building do
    name { FFaker::Address.building_number }
  end
end
