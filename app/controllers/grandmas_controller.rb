class GrandmasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @grandmas = policy_scope(Grandma)

    # @grandmas = Grandma.joins(:user).merge(User.where(latitude: nil))


    @markers = @grandmas.each do |grandma|
      {
        lat: grandma.user.latitude,
        lng: grandma.user.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end

  end

  def new
    @grandma = Grandma.new
    authorize @grandma
  end

  def create
    @grandma = Grandma.new(grandma_params)
    @grandma.user = current_user
    authorize @grandma

    if @grandma.save
      redirect_to grandma_path(@grandma)
    else
      render :new
    end
  end

  def show
    @grandma = Grandma.find(params[:id])
    authorize @grandma
  end

  def edit
    @grandma = Grandma.find(params[:id])
    authorize @grandma
  end

  def update
    @grandma = Grandma.find(params[:id])
    authorize @grandma
    @grandma.update(grandma_params)
    redirect_to grandma_path(@grandma)
  end

  private

  def grandma_params
    params.require(:grandma).permit(:baby_sitting, :cooking, :knitting, :pet_sitting, :price)
  end
end
