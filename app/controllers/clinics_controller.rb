class ClinicsController < ApplicationController
	def new
		@clinic = Clinic.new
		@doctor = Doctor.new
	end

	def create
		@clinic = Clinic.new(params[:clinic])
		if @clinic.save
			flash.now[:success] = "Clinica ingresada con exito"
			redirect_to root_url
		else
			flash.now[:success] = "Error al ingresar clinica"
			render 'new'
		end
	end

	def show
		@clinic = Clinic.find(params[:id])
	end


end
