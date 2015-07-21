class CreaturesController < ApplicationController

  def index
    @creature = Creature.all
  end

  def show
  end

  def new
    @creature = Creature.new
  end

  def create
    @creature = Creature.new(allowed_params)
    if @creature.save
      redirect_to @creature
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end




  private
  def allowed_params
    params.require(:creature).permit(:name, :size)

  end
end
