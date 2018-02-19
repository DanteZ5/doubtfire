class GrandmasController < ApplicationController
  def index
    @grandmas = Grandma.all
  end

  def show
    @grandma = Grandma.find(params[:id])
  end

  def edit
    @grandma = Grandma.find(params[:id])
  end

  def update
    @grandma = Grandma.find(params[:id])
    @grandma.update(grandma_params)
    redirect_to grandma_path(@grandma)
  end

  def grandma_params
    params.require(:grandma).permit(:baby_sitting, :cooking, :knitting, :pet_sitting, :price)
  end
end
