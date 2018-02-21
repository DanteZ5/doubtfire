class BookingsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index #relatif au user

    grandmas = Grandma.all
    booli = false
    grandmas.each do |grandma|
      if grandma.user == current_user
        @bookings = grandma.bookings
        booli = true
      end
    end
    unless booli
      @bookings = policy_scope(Booking).order(created_at: :desc)
      authorize @bookings
    end
  end

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
    @booking = Booking.find(params[:id])
    authorize @booking
    accepted = eval(params[:format])
    if accepted
      @booking.update(status: "validate")
    else
      @booking.update(status: "declined")
    end
    redirect_to grandma_booking_path(@booking.grandma.id, @booking.id)
  end

  private

  def booking_params
    #white list
    params.require(:booking).permit(:status, :start_date, :end_date, :grandma_id, :user_id)
  end
end
