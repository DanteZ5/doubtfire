class BookingsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index #relatif au user

    grandmas = Grandma.all
    booli = false
    grandmas.each do |grandma|
      if grandma.user == current_user
        @bookings = grandma.bookings.order(created_at: :desc)
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
    sleep 1.5

    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.grandma = Grandma.find(params[:grandma_id])
    # ameliore les champs de booking
    @booking.date = params[:booking][:date]
    @booking.start_hour = "#{params[:booking]["start_hour(4i)"]} : #{params[:booking]["start_hour(5i)"]}"
    @booking.end_hour = "#{params[:booking]["end_hour(4i)"]} : #{params[:booking]["end_hour(5i)"]}"
    @booking.user_id = current_user.id

    @booking.save

    redirect_to grandma_booking_path(@booking.grandma, @booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
    @end_booking = endbooking(@booking)
  end

  # def edit
  #   @collection = ["pending", "accepted", "canceled"]
  # end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking

    # systeme de validation
    unless params[:format].nil?
      accepted = eval(params[:format])
      if accepted
        @booking.update(status: "validate")
      else
        @booking.update(status: "declined")
      end
      redirect_to grandma_booking_path(@booking.grandma.id, @booking.id)
    end

    # systeme de vote
    unless params[:note].nil?
      @booking.grandma.new_vote(params[:note].to_i)
      # @booking.grandma.user.update(review: params[:note].to_i)
      redirect_to grandma_path(@booking.grandma.id)
    end
  end

  def rate
    @booking = Booking.find(params[:id])
    authorize @booking
    unless params[:note].nil?
     @booking.grandma.user.update(review: params[:note].to_i)
     redirect_to grandma_path(@booking.grandma.id)
    end
  end

  private

  def booking_params
    #white list
    params.require(:booking).permit(:status, :start_date, :end_date, :grandma_id, :user_id, :date, :start_hour, :end_hour)
  end

   # fonction qui créé le format convionnel pour la fin du booking
  def endbooking(booking)
    year = @booking.date.split('-').first.to_i
    month = @booking.date.split('-').second.to_i
    day = @booking.date.split('-').third.to_i
    hour = @booking.end_hour.split(' : ').first.to_i
    min = @booking.end_hour.split(' : ').second.to_i
    Time.new(year,month,day,hour,min)
  end
end
