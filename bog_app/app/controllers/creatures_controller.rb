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
    cparams = params.require(:creature).permit(:name, :description)
    creature = Creature.new(cparams)
    if creature.save
      redirect_to creature_path(creature)
    end
  end

  def show
    id = params[:id]
    @creature = Creature.find_by_id(id)
    render :show
  end

  def edit
    id = params[:id]
    @creature = Creature.find_by_id(id)
    render :edit
  end

  def update
    id = params[:id]
    creature = Creature.find_by_id(id)
    cparams = params.require(:creature).permit(:name, :description)
    creature.update_attributes(cparams)
    redirect_to creature_path(creature)
  end

  def destroy
    id = params[:id]
    creature = Creature.find_by_id(id)
    creature.destroy
    redirect_to creatures_path
  end

end
