class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def create
    3.times do
      @group = Group.create()
      @caracters = Caracter.where(status: true)
      @caracters.sample(2).each do |caracter|
        caracter.update(status: false)
        Membership.create!(caracter_id: caracter.id, group_id: @group.id)
      end
    end
  end
end
