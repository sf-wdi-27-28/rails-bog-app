class CreaturesController < ApplicationController
  before_action :get_id, only: [:update, :delete, :edit, :show]
  
  def index
    @creatures = Creature.all

    render :index
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    if creature.save
      redirect_to creature_path(creature)
    end
  end

  def show
    render :show
  end

  def edit
  render :edit
  end

  def update
    creature_params = params.require(:creature).permit(:name, :description)
    creature.update_attributes(creature_params)
    redirect_to creature(creature)
  end

  def destroy
    creature.destroy
    redirect_to creatures_path
  end

  private

  def grab_id
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
  end
end
