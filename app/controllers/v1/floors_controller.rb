module V1
  class FloorsController < ::ApplicationController
    before_action :find_building, only: [:create, :index]

    def create
      @floor = @building.floors.find_or_initialize_by(floor_params)
      if @floor.save
        render json: { data:   @floor }, status: :created
      else
        render json: { errors: @floor.errors }, status: :unprocessable_entity
      end
    end

    private

    def floor_params
      params.require(:floor).permit(:number)
    end

    def find_building
      @building = Building.find(params[:building_id])
    end
  end
end
