module V1
  class ResidentsController < ::ApplicationController

    def create
      @resident = Resident.new(resident_params)
      if @resident.save
        render json: { data:   @resident }, status: :created
      else
        render json: { errors: @resident.errors }, status: :unprocessable_entity
      end
    end

    private
    def resident_params
      params.require(:resident).permit(:apartment_id, :external_id, :first_name, :last_name, :email, :phone_number)
    end
  end
end
