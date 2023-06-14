class BookingsController < ApplicationController
  before_action :set_equipment, only: [:new, :create]

  def new
    @booking = Booking.new
    @booking.equipment = @equipment
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.equipment = @equipment
    if @booking.save
      redirect_to equipment_path(@equipment), notice: "Booking was successfully made."
    else
      render :new, status: :unprocessable_entity
    end
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
