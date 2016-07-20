class PeopleController < ApplicationController
  def index
  	@people = Person.all
  end
  def new
  	@tower = Tower.find(params[:tower_id])
  	@apartament = @tower.apartaments.find(params[:apartament_id])
	 @person= @apartament.people.new
  end
  def create
		@tower = Tower.find(params[:tower_id])
		@apartament = @tower.apartaments.find(params[:apartament_id])
		person = @apartament.people.new(person_params)
		person.save
		redirect_to tower_apartament_path(@tower,@apartament)
	end

  def edit
    @tower = Tower.find(params[:tower_id])
    @apartament = @tower.apartaments.find(params[:apartament_id])
    @person = @apartament.people.find(params[:id])
  end
  def update
    @tower = Tower.find(params[:tower_id])
    @apartament = @tower.apartaments.find(params[:apartament_id])
    @person = @apartament.people.find(params[:id])
    @person.update(person_params)
    redirect_to tower_apartament_path(@tower,@apartament)
  end
  def destroy
    @tower= Tower.find(params[:tower_id])
    @apartament = @tower.apartaments.find(params[:apartament_id])
    @person = @apartament.people.find(params[:id])
    @person.destroy
    redirect_to tower_apartament_path(@tower,@apartament)
  end

  def show
  end
  private
  def person_params
    params.require(:person).permit(:nombre , :identificacion , :apartament_id)
  end
end
