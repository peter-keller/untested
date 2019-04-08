class QuantititesController < ApplicationController
  def index
    @quantitys = Quantity.all
    end

  def show
    @quantity = Quantity.find(params[:id])
  end

  def create
    @quantity = Quantity.new(quantity_params)
    @quantity.save

    redirect_to quantity_path(@quantity)
  end

  def edit
    @quantity = Quantity.find(params[:id])
  end

  def new
    @quantity = Quantity.new
  end

  def update
    @quantity = Quantity.find(params[:id])
    @quantity.update(quantity_params)
    @quantity.save

    redirect_to quantity_path(@quantity)
  end

  def delete; end

  private

  def quantity_params
    params.require(:quantity).permit(:amount, :recipe_id, :ingredient_id)
  end
end
