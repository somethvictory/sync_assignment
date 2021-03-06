require 'rails_helper'

RSpec.describe V1::ResidentsController, type: :request do
  describe 'POST create' do
    before do
      @apartment = create(:apartment)
      @resident  = build(:resident, apartment: @apartment)

      post v1_residents_path(resident: @resident.attributes)
    end

    it 'returns 201 status code' do
      expect(response.status).to eq 201
    end

    it 'returns content type as json' do
      expect(response.content_type).to eq 'application/json'
    end

    it 'returns required attributes' do
      result = JSON.parse(response.body)

      expect(result['data']['external_id']).not_to  be nil
      expect(result['data']['first_name']).not_to   be nil
      expect(result['data']['last_name']).not_to    be nil
      expect(result['data']['email']).not_to        be nil
      expect(result['data']['phone_number']).not_to be nil
    end

    it 'returns 422 status code when data is invalid' do

      post v1_residents_path(resident: { external_id: nil })

      expect(response.status).to eq 422
    end
  end
end
