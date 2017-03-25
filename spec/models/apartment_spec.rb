require 'rails_helper'

RSpec.describe Apartment, type: :model do
  context 'assocations' do
    it { is_expected.to belong_to(:floor) }
    it { is_expected.to have_many(:residents) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:external_id)  }
    it { is_expected.to validate_uniqueness_of(:external_id) }
  end
end
