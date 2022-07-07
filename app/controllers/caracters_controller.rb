class CaractersController < ApplicationController

  def index
    @caracters = Caracter.all
    @group = Group.new()
    @groups = Group.all
    @caracter = Caracter.new()
    @random_caracter = @caracters.sample
    @random_caracter.update(status: false)
    @request = Request.new()
  end

  def new
    @caracter = Caracter.new()
  end

  def create
    @caracter = Caracter.new(caracter_params)
    @caracter.status = true
    @caracter.save
    redirect_to caracters_path
  end

  def destroy
    @caracter = Caracter.find(params[:id])
    @caracter.destroy
    redirect_to caracters_path, status: :see_other
  end



  private

  def caracter_params
    params.require(:caracter).permit(:name, :status, :photo)
  end

  def number_params
    params.require(:number).permit(:number)
  end
end
