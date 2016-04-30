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
      redirect_to creatures_path
    end
  end

  # showing a  single creature
  def show
    # get the creature from url params
    creature_id - params[:id]

    # use 'creature_id' to find the creature in the database
    # save it to an instance variable
    @creature = Creature.find_by_id(creature_id)
    # render the show view
    render :show
  end
end
