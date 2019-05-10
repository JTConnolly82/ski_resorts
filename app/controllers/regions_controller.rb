class RegionsController < ApplicationController
  
  before_action :set_state
  before_action :set_region, only: [:show, :update, :edit, :destroy]
  
  def index
    @regions = @state.regions
  end

  def show
  end

  def new
    @region = @state.regions.new
  end

  def create
    @region = @state.regions.new(region_params)
    if @region.save
      redirect_to [@state, @region]
    else
      render :new
    end
  end

  def update
    if @region.update(region_params)
      redirect_to [@state, @region]
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @region.destroy
    redirect_to state_regions_path
  end

private

def set_state
  @state = State.find(params[:state_id])
end

def set_region
  @region = Region.find(params[:id])
end


def region_params
  params.require(:region).permit(:region_name, :region_description)
end

end
