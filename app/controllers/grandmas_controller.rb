class GrandmasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @grandmas = policy_scope(Grandma)
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

  def create
    authorize @grandma
  end

  private

  def grandma_params
    params.require(:grandma).permit(:baby_sitting, :cooking, :knitting, :pet_sitting, :price)
  end
end
