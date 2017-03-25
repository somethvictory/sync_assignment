require 'rails_helper'

RSpec.describe V1::FloorsController, type: :request do
  describe 'POST create' do
    before do
      @building  = create(:building)
      @floor     = build(:floor)

      post v1_building_floors_path(@building, floor: @floor.attributes)
    end

    it 'returns 201 status code' do
      expect(response.status).to eq 201
    end

    it 'returns content type as json' do
      expect(response.content_type).to eq 'application/json'
    end

    it 'returns required attributes' do
      result = JSON.parse(response.body)

      expect(result['data']['number']).not_to be nil
    end

    it 'returns 422 status code when data is invalid' do

      post v1_building_floors_path(@building, floor: { number: nil })

      expect(response.status).to eq 422
    end
  end
end
