class DoctorsController < ApplicationController
	respond_to :html

	def new
		@clinic = Clinic.find(params[:clinic_id])
		@doctor = Doctor.new
		schedule = @doctor.schedules.build
	end

	def create
		@doctor = Doctor.new(params[:doctor])
		if @doctor.save
			flash.now[:success] = "Medico ingresado con exito"
			redirect_to root_url
		else
			flash.now[:success] = "Error al ingresar doctor"
			render 'new'
		end
	end

	def search
		@doctors = Doctor.search(params[:search])
		@search_tag = params[:search]

	end

	def index
	end
end
