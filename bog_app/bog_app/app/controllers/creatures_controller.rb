class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all

    render :index
  end

  def new
    @creatures = Creature.new

    render :new
  end
end
