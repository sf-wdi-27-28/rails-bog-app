class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all #get all creatures from db and save to instance variable
    render :index #render the index view (it has access to instance variable)
  end
end
