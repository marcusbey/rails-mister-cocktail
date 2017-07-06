class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Restaurant.new(user_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(user_params)
  end

  def destroy
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end
end

  private

  def user_params
    params.require(:cocktail).permit(:name)
  end
end
