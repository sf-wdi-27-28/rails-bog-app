class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    Creature.create(creature_params)
    redirect_to creature_path
  end

  def show
    @creature = Creature.find(creature_id)
  end

  def edit
    @creature = Creature.find(creature_id)
  end

  def update
    @creature = Creature.find(creature_id)
    @creature.update(creature_params)
    redirect_to creature_path
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

  def creature_id
    params[:id]
  end

end
