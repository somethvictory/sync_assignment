class Apartment < ApplicationRecord
  belongs_to :floor
  has_many   :residents

  validates  :external_id, presence: true, uniqueness: true
end
