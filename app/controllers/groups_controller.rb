class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def create
    3.times do
      @group = Group.create()
      Caracter.valid.sample(2).each do |caracter|
        caracter.update(status: false)
        Membership.create(caracter_id: caracter.id, group_id: @group.id)
      end
    end
    if Group.find_each(&:save)
      redirect_to caracters_path
    else
      redirect_to caracters_path, status: :unprocessable_entity
    end
  end

  def reset
    @groups = Group.all
    @groups.destroy_all
    Caracter.all.each do |caracter|
      caracter.update(status: true)
    end
    redirect_to caracters_path
  end
end
