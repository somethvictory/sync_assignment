require 'rails_helper'

RSpec.describe Resident, type: :model do
  context 'assocations' do
    it { is_expected.to belong_to(:apartment) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:external_id)   }
    it { is_expected.to validate_uniqueness_of(:external_id) }
  end

  context 'missing attributes' do
    before do
      @resident = build(:resident, first_name: '', last_name: '', email: '', phone_number: '')
      @resident.save
    end

    it 'sets first_name to unknown' do
      expect(@resident.first_name).to eq 'unknown'
    end

    it 'sets last_name to unknown' do
      expect(@resident.last_name).to eq 'unknown'
    end

    it 'sets email to unknown' do
      expect(@resident.email).to eq 'unknown'
    end

    it 'sets phone_number to unknown' do
      expect(@resident.phone_number).to eq 'unknown'
    end
  end
end
