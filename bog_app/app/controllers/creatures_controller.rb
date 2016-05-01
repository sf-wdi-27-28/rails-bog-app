class CreaturesController < ApplicationController
  # display all creatures
  def index
    # get all creatures from db and save to instance variable
    @creatures = Creature.all
    # render index view (this has access to index variable)
    render :index
  end

  def new
    @creature = Creature.new
    render :new
  end

  # create a new creature in the db
  def create
    # whitelist paras and save in a variable
    creature_params = params.require(:creature).permit(:name, :description)

    # create a new creature from creature_params
    creature = Creature.new(creature_params)

    # if creature saves, redirect to path that shows all creatures ("/creatures")
    if creature.save
      redirect_to creatures_path(creature)
    end
  end

  # showing a  single creature
  def show
    # get the creature from url params
    creature_id = params[:id]

    # use 'creature_id' to find the creature in the database
    # save it to an instance variable
    @creature = Creature.find_by_id(creature_id)
    # render the show view
    render :show
  end

  def edit
    # using params
    creature_id = params[:id]

    # use "creature_id"
    # "save to instance variable"
    @creature = Creature.find_by_id(creature_id)

    # render edit view
    render :edit
  end

  # update a creature_id
  def update
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    creature = Creature.find_by_id(creature_id)

    # whitelist params and save them to a variable
    creature_params = params.require(:creature).permit(:name, :description)

    # update the creature
    creature.update_attributes(creature_params)

    # redirect to show page for the updated creature
    redirect_to creature_path(creature)
    # redirect_to creature_path(creature) is equivalent to:
    # redirect_to "/creatures/#{creature.id}"
  end

  # delete a creature
  def destroy
    # get creature id from url params
    creature_id = params[:id]

    creature = Creature.find_by_id(creature_id)

    creature.destroy

    redirect_to creatures_path
  end

end
