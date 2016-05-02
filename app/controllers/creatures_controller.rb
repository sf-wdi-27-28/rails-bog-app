class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    Creature.create(creature_params)
    redirect_to creatures_path
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end
  
end
