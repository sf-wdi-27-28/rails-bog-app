class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def create
    creature_params = params.require(:creature).permit(:name, :description)
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to creature_path(creature)
    end
  end

  def update
    creature_id = params[:id]
    creature = Creature.find_by_id(creature_id)
    creature_params = params.require(:creature).permit(:name, :description)
    creature.update_attributes(creature_params)
    redirect_to creature_path(creature)
  end

  def edit
    creature_id = params[:id]
    @creature =  Creature.find_by_id(creature_id)
    render :edit
  end

  def show
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
    render :show
  end

  def new
    @creature = Creature.new
    render :new
  end
end
