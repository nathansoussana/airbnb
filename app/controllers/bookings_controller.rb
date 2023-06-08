class BookingsController < ApplicationController
  before_action :set_equipment, only: [:new, :create]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.equipment = @equipment
    @booking.save
    redirect_to equipment_path(@equipment)
    authorize @booking
  end

  private

  def set_equipment
    @equipment = Equipment.find(params[:equipment_id])
    
  end
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
