class CreaturesController < ApplicationController
  #display all creatures
  def index
    #get all creatures from db and save to instance variable
    @creatures = Creature.all
    # render the index view (it has access to instance variable)
    render :index
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    # whitelist params and save them to a variable
    creature_params = params.require(:creature).permit(:name, :description)

    # create a new creature from 'creature_params'
    creature = Creature.new(creature_params)

    #if creature saves, redirect to route that displays all creatures
    if creature.save
      redirect_to creature_path(creature)
      # redirect_to creature_path(creature) is equivalent to:
      # redirect_to "/creatures/#{creature.id}"
    end
  end

  def show
    # get the creature id from the url params
    creature_id = params[:id]

    # use cereature_id to find the creature in the database
    # and save to an instance variable
    @creature = Creature.find_by_id(creature_id)

    # render the show view (it has access to instance variable)
    render :show
  end

  def edit
    creature_id = params[:id]

    @creature = Creature.find_by_id(creature_id)

    render :edit
  end

  def update
    creature_id = params[:id]

    creature = Creature.find_by_id(creature_id)

    creature_params = params.require(:creature).permit(:name, :description)

    creature.update_attributes(creature_params)

    redirect_to creature_path(creature)
  end

  def destroy
    creature_id = params[:id]

    creature = Creature.find_by_id(creature_id)

    creature.destroy

    redirect_to creatures_path
  end

end
