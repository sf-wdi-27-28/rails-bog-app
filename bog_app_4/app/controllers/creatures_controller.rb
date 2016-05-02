class CreaturesController < ApplicationController

  def index
    @creatures = Creatures.all

    render :index
  end

  
end
