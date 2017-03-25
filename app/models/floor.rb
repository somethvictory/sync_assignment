class Floor < ApplicationRecord
  belongs_to :building
  has_many   :apartments

  validates :number, presence: true, uniqueness: true
end
