class ResortsController < ApplicationController
  
  before_action :set_region
  before_action :set_resort, only: [:show, :update, :edit, :destroy]
  
  def index
    @resorts = @region.resorts
  end

  def show
  end

  def new
    @resort = @region.resorts.new
  end

  def create
    @resort = @region.resorts.new(resort_params)
    if @resort.save
      redirect_to [@region, @resort]
    else
      render :new
    end
  end
 

  def edit
  end

  def update
    if @resort.update(resort_params)
      redirect_to [@region, @resort]
    else
      render :edit
    end
  end

  def destroy
    @resort.destroy
    redirect_to region_resorts_path
  end

private

  def set_region
    @region = Region.find(params[:region_id])
  end

  def set_resort
    @resort = Resort.find(params[:id])
  end

  def resort_params
    params.require(:resort).permit(:resort_name, :resort_description, :vertical_drop,
    :allows_snowboarding, :annual_snowfall, )
  end

end
