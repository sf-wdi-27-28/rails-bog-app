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
    redirect_to creatures_path
  end

end
