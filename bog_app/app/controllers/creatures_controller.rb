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

end
