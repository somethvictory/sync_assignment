require 'rails_helper'

RSpec.describe Floor, type: :model do
  context 'assocations' do
    it { is_expected.to belong_to(:building) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:number)   }
    it { is_expected.to validate_uniqueness_of(:number) }
  end
end
