class CaractersController < ApplicationController
  attr_accessor :name

  def index
    @caracters = Caracter.all
    @membership = Membership.new()
    @groups = Group.all
  end
end
