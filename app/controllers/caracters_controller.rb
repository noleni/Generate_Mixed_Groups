class CaractersController < ApplicationController
  attr_accessor :name

  def index
    @caracters = Caracter.all
    @group = Group.new()
    @groups = Group.all
  end
end
