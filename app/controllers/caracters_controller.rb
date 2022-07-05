class CaractersController < ApplicationController
  attr_accessor :name

  def index
    @caracters = Caracter.all
    @group = Group.new()
    @groups = Group.all
    @caracter = Caracter.new()
  end

  def new
    @caracter = Caracter.new()
  end

  def create
    @caracter = Caracter.new(caracter_params)
    @caracter.save
    redirect_to caracters_path
  end

  def destroy
    @caracter = Caracter.find(params[:id])
    @caracter.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to caracters_path, status: :see_other
  end

  private

  def caracter_params
    params.require(:caracter).permit(:name, :photo)
  end


end
