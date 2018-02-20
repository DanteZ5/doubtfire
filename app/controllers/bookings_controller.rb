class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @grandma = Grandma.find(params[:grandma_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user_id = current_user.id
    @booking.save
    redirect_to grandma_booking_path(@booking.grandma, @booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  # def edit
  #   @collection = ["pending", "accepted", "canceled"]
  # end

  def update
    @booking.update(booking_params)
    authorize @booking
    redirect_to booking_path(params[:id])
  end

  private

  def booking_params
    #white list
    params.require(:booking).permit(:status, :start_date, :end_date, :grandma_id, :user_id)
  end
end
