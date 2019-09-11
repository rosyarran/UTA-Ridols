class RiddlesController < ApplicationController
  
  def index
    @riddles = Riddle.all
  end
  
end
