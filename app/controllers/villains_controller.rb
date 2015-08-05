class VillainsController < ApplicationController

  def index
    @villains = Villain.all
    render :index
  end

  def show
    id = params[:id]
    @villain = Villain.find(id)
    render :show
  end

  def new
    @villain = Villain.new
    render :new
  end

  def create
    villain_params = params.require(:villain).permit(:name, :description, :avatar)
    @villain = Villain.new(villain_params)
    if @villain.save
      redirect_to "/villains/#{@villain.id}"
    end
  end

  def edit
    id = params[:id]
    @villain = Villain.find(id)
    render :edit
  end

  def update
    villain_id = params[:id]
    villain = Villain.find(villain_id)

    updated_attributes = params.require(:villain).permit(:name, :description, :avatar)

    villain.update_attributes(updated_attributes)

    #redirect to show
    redirect_to "/villains/#{villain_id}"
  end

  def destroy
    id = params[:id]
    villain = Villain.find(id)
    villain.destroy
    redirect_to "/villains"
  end

end
