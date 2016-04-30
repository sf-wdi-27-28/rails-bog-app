class CreaturesController < ApplicationController
  def index
    #get all the creatures from db and save instance variable
    @creatures = Creature.all
    #render the creatures to view
    render :index
  end

  def new
    render :new
  end
  
end
