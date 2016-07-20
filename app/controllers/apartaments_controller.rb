class ApartamentsController < ApplicationController
	def index
		@apartaments = Apartament.all
	end

	def new
		@tower = Tower.find(params[:tower_id])
		@apartament = @tower.apartaments.new
	end
	def create
		@tower = Tower.find(params[:tower_id])
		apartament = @tower.apartaments.new(apartament_params)
		apartament.save
		redirect_to tower_path(@tower)
	end
	def edit
		@tower = Tower.find(params[:tower_id])
		@apartament = @tower.apartaments.find(params[:id])
	end
	def update
		@tower = Tower.find(params[:tower_id])
		@apartament = @tower.apartaments.find(params[:id])
		@apartament.update(apartament_params)
		redirect_to tower_path(@tower)
	end
	def destroy
		@tower= Tower.find(params[:tower_id])
		@apartament = @tower.apartaments.find(params[:id])
		@apartament.destroy
		redirect_to tower_path(@tower)
	end
	def show
		@tower = Tower.find(params[:tower_id])
		@apartament = @tower.apartaments.find(params[:id])
		@people = @apartament.people.all
	end

	private
	def apartament_params
		params.require(:apartament).permit(:nombre, :piso ,:tower_id)
	end
end

