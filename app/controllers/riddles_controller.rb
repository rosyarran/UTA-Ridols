class RiddlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @riddle = Riddle.order("RANDOM()").first
  end
  
  def new
    @riddle = Riddle.new
  end
  
  def create
    current_user.riddles.create(riddle_params)
    redirect_to root_path
  end
  
  private
  
  def riddle_params
    params.require(:riddle).permit(:question, :answer)
  end
  
end
