class MembershipsController < ApplicationController

  def index
    @memberships = Membership.all
  end

  def show
    @membership = Membership.find(params[:id])
  end

  def new
    @membership = Membership.new()
  end

  def create
    @caracters = Caracter.where(status: true)
    @caracter = @caracters.sample
    @groups = Group.where.not(status: 'taken')
    @group = @groups.sample
    @membership = Membership.create(caracter_id: @caracter.id, group_id: @group.id)
    @caracter.update(status: false)
    if @group.status == 'half'
      @group.update(status: 'taken')
    elsif @group.status == 'available'
      @group.update(status: 'half')
    end
  end


end
