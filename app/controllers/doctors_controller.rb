class DoctorsController < ApplicationController

    def index
        @doctors = Doctors.all
    end
    
    def show
        @doctor = Doctor.find_by(params[:id])
    end

    private
    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end
end