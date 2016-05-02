class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end


  def new
    @creature = Creature.new
  end

  def create
    creature_params = params.require(:creature).permit(:name, :description)
    Creature.create(creature_params)
    redirect_to creature_path(creature_id)
  end

  def show
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
  end

end
