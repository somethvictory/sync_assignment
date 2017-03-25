class Resident < ApplicationRecord
  belongs_to :apartment

  validates  :external_id, presence: true, uniqueness: true

  before_save :set_missing_attributes

  private
  def set_missing_attributes
    self.external_id  = 'unknown' if self.external_id.blank?
    self.first_name   = 'unknown' if self.first_name.blank?
    self.last_name    = 'unknown' if self.last_name.blank?
    self.email        = 'unknown' if self.email.blank?
    self.phone_number = 'unknown' if self.phone_number.blank?
  end
end
