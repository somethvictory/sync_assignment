require 'rails_helper'

RSpec.describe V1::ApartmentsController, type: :request do
  describe 'POST create' do
    before do
      @building  = create(:building)
      @floor     = create(:floor, building: @building)
      @apartment = build(:apartment)

      post v1_floor_apartments_path(@floor, apartment: @apartment.attributes)
    end

    it 'returns 201 status code' do
      expect(response.status).to eq 201
    end

    it 'returns content type as json' do
      expect(response.content_type).to eq 'application/json'
    end

    it 'returns required attributes' do
      result = JSON.parse(response.body)

      expect(result['data']['floor_id']).not_to    be nil
      expect(result['data']['external_id']).not_to be nil
    end

    it 'returns 422 status code when data is invalid' do

      post v1_floor_apartments_path(@floor, apartment: { external_id: nil })

      expect(response.status).to eq 422
    end
  end
end
