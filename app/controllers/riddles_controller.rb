class RiddlesController < ApplicationController
  
  def index
    @riddle = Riddle.order("RANDOM()").first
  end
  
  def new
    @riddle = Riddle.new
  end
  
  def create
    Riddle.create(riddle_params)
    redirect_to root_path
  end
  
  private
  
  def riddle_params
    params.require(:riddle).permit(:question, :answer)
  end
  
end
