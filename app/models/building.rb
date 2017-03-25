class Building < ApplicationRecord
  has_many :floors

  validates :name, presence: true
end
