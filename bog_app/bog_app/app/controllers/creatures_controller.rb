class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    render :index
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    creature_params = params.require(:creature).permit(:name, :description)
    creature = Creature.new(creature_params)

    if creature.save
      redirect_to creatures_path
    end
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def edit
    @creature = Creature.find(params[:id])
    render :edit
  end

  def update
    creature_params = params.require(:creature).permit(:name, :description)
    creature = Creature.find(params[:id])
    creature.update_attributes(creature_params)
    redirect_to creature_path(creature)
  end

  def destroy
    creature = Creature.find(params[:id])
    creature.destroy
    redirect_to creatures_path
  end
end
