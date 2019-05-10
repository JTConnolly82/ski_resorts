class StatesController < ApplicationController
  
  before_action :set_state, only: [:show, :update, :edit, :destroy]
  
  
  def index
    @states = State.all
  end

  def show
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to states_path
    else
      render :new
    end
  end

  def update
    if @state.update(state_params)
      redirect_to @state
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @state.destroy
    redirect_to states_path
  end

  private 

  def set_state
    @state = State.find(params[:id])
  end
  
  def state_params
    params.require(:state).permit(:state_name, :state_description)
  end

  

end
