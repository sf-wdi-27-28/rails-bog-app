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

  def create
    #whitelist params and save to a variable
    creature_params = params.require(:creature).permit(:name, :description)
    # create a new creature from `creature_params`
    creature = Creature.new(creature_params)
    #if creature saves, redirect to route that display
    # ONLY the newly created creature
    if creature.save
      redirect_to creature_path(creature)
      # redirect_to creature_path(creature) is equivalent to:
        # redirect_to "/creatures/#{creature.id}"
    end
  end

  def update
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
         # and save it to an instance variable
    @creature = Creature.find_by_id(creature_id)

    # whitelist params and save them to a variable
    creature_params = params.require(:creature).permit(:name, :description)

    #update the creature
    creature.update_attributes(creature_params)

    #redirect to show page for the updated creature
    redirect_to creature_path(creature)
    # redirect_to creature_path(creature) is equivalent to:
     # redirect_to "/creatures/#{creature.id}"
  end

  def edit

    creature_id = params[:id]

    @creature = Creature.find_by_id(creature_id)

    render :edit

  end

  def destroy
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
      # and save it to an instance variable
    creature = Creature.find_by_id(creature_id)

     # destroy the creature
    creature.destroy

    redirect_to creatures_path



  end
end
