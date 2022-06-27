class CaractersController < ApplicationController
  def index
    @caracters = Caracter.all
  end
end
