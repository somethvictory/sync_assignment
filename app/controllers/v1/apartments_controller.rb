module V1
  class ApartmentsController < ::ApplicationController
    before_action :find_floor, only: [:create]

    def create
      @apartment = @floor.apartments.find_or_initialize_by(apartment_params)
      if @apartment.save
        render json: { data:   @apartment }, status: :created
      else
        render json: { errors: @apartment.errors }, status: :unprocessable_entity
      end
    end

    private
    def apartment_params
      params.require(:apartment).permit(:external_id)
    end

    def find_floor
      @floor = Floor.find(params[:floor_id])
    end
  end
end
