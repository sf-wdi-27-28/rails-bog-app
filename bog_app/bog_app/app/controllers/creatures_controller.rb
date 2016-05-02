class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all

    render :index
  end

  def new
    @creatures = Creature.new

    render :new
  end

  def show

    creature_id = params[:id]
     # you use the creature_id to get the creature params and id
     #from the database then save it to an instance variable
    @creature = Creature.find_by_id(creature_id)

    render :show
  end

  def created

    creature_params = params.require(:creature).permit(:name, :description)

    @creature = Creature.new(creature_params)

    if creature.Save
      redirect_to creature_path(creature)
      # this redirects_to "/creatures"
    end

    def edit

      creature_id = params[:id]

      @creature = Creature.find_by_id(creature_id)

      # renders the dit view (this has access to the instance variable)
      render :edit


    end

    def update

      creature_id = params[:id]

      @creature = Creature.find_by_id(creature_id)

      creature_params = params.require(:creature).permit(:name, :description)

      # update the creature Updates a single attribute and saves the record without going through the normal validation procedure.
      creature.update_attributes(creature_params)

      redirect_to creature_path(creature)



    end
  end
end
