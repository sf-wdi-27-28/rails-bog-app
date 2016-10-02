class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def new
    render :new
  end

  def create
    @creature = Creature.create(creature_params)
    redirect_to creature_path
  end

  def show
    @creature = Creature.find_by_id params[:id]
  end

  def edit
    @creature = Creature.find_by_id params[:id]
  end

  def update
    creature = Creature.find_by_id params[:id]
    creature.update_attributes(creature_params)
    redirect_to creatures_path
  end

  def destroy
    @creature = Creature.find_by_id params[:id]
    @creature.destroy
    redirect_to creatures_path
  end

private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end
end
