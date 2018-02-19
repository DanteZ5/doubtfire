class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @grandmas = Grandma.all
    @users = User.all
  end

   def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(params[:id])
  end

  private

  def booking_params
    #white list
    params.require(:booking).permit(:status, :start_date, :end_date, :grandma_id, :user_id)
  end
end
