class GardensController < ApplicationController

  def update
  end

  def index
    @gardens = policy_scope(Garden).order(created_at: :desc)
  end

  def show
    @garden = policy_scope(Garden).find(params[:id])
  end

 def new
    @garden = policy_scope(Garden).new
    authorize @garden
  end

  def create
    @garden = current_user.gardens.build(garden_params)
    authorize @garden
    @garden.save
    redirect_to gardens_path
  end

  def destroy
    @garden = Garden.find(params[:id])
    authorize @garden
    @garden.destroy
  end

  private

  def garden_params
    params.require(:garden).permit(:title, :content, :price_per_day, :price_per_month, :availability, :address, :surface, :plant_type)
  end
end
