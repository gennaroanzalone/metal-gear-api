class GearsController < ApplicationController

  def index
    name = params[:name]
    @gears = Gear.search(name)
    json_response(@gears)
  end

  def show
    @gear = Gear.find(params[:id])
    json_response(@gear)
  end

  def create
    @gear = Gear.create!(gear_params)
    json_response(@gear, :created)
  end

  def update
    if @gear.update!(gear_params)
      render status: 200, json: {
        message: "Gear has been updated successfully."
      }
    end
  end

  def destroy
    @gear = Gear.find(params[:id])
    @gear.destroy
  end

  private

  def gear_params
    params.permit(:name, :about)
  end

end
