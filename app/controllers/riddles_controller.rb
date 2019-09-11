class RiddlesController < ApplicationController
  
  def index
    @riddle = Riddle.order("RANDOM()").first
  end
  
end
