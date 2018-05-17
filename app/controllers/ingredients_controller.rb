class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show]

  def index         # GET /restaurants
    @ingredients = Ingredient.all
  end

  def show          # GET /restaurants/:id

  end

  def new           # GET /restaurants/new
    @ingredient = Ingredient.new
  end

  def create        # POST /restaurants
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to ingredient_path(@ingredient)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end




end
