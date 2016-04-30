class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    render :index
  end

  def show
    @creature = Creature.find(params[:id])
    render :show
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to creature_path(creature)
      # redirect_to creatures_path is equivalent to:
      # redirect_to "/creatures"
    end
  end

  def show
    @creature = Creature.find(params[:id])
    render :show
  end

  def edit
    @creature = Creature.find(params[:id])
  end

  def update
    @creature = Creature.find(params[:id])
    if @creature.update(creature_params)
      redirect_to creature_path, notice: 'Creature was udpated successfully.'
    else
    render :edit
    end
  end

  def destroy
    @creature = Creature.find(params[:id])
    @creature.destroy
    redirect_to creatures_path
  end

private

def creature_params
  params.require(:creature).permit(:name, :description)
end

end
