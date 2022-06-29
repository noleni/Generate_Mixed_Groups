class MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
  end

  # def create
  #   @caracters = Caracter.where(status: true)
  #   @caracter = @caracters.sample
  #   @groups = Group.where.not(status: 'taken')
  #   @group = @groups.sample
  #   @membership = Membership.create(caracter_id: @caracter.id, group_id: @group.id)
  #   @caracter.update(status: false)
  #   # @membership = Membership.create(caracter_id: @caracter.id, group_id: @group.id)

  # end
end
