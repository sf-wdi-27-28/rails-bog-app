class CreaturesController < ApplicationController
  def index
    #get all the creatures from db and save instance variable
    @creatures = Creature.all
    #render the creatures to view
    render :index
  end

  # show the new creature form
  def new
    @creature = Creature.new
    render :new
  end

  def show
    #gets creature id from url params
    creature_id = params[:id]

    #use the `creature_id` to find the creature in db
    #save it to an instance variable
    @creature = Creature.find_by_id(creature_id)

    render :show

  end
end
