class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature_params = params.require(:creature).permit(:name, :description)
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to creature_path(creature)
    end
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def edit
    @creature = Creature.find(params[:id])
  end

  def update
    creature = Creature.find(params[:id])
    creature_params = params.require(:creature).permit(:name, :description)
    creature.update(creature_params)
    redirect_to creature_path(creature)
  end

  def destroy
    Creature.find(params[:id]).delete
    redirect_to creatures_path
  end


end
