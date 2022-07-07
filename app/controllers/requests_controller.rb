class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      number_of_players = Caracter.valid.count / @request.number
      @request.number.times do
        @group = Group.create(request_id: @request.id)
        Caracter.valid.sample(number_of_players).each do |caracter|
          caracter.update(status: false)
          Membership.create(caracter_id: caracter.id, group_id: @group.id)
        end
      end
    end
    if Group.find_each(&:save)
      redirect_to caracters_path
    else
      redirect_to caracters_path, status: :unprocessable_entity
    end
  end

  private

  def request_params
    params.require(:request).permit(:number)
  end

  def generate_groups
  end
end
