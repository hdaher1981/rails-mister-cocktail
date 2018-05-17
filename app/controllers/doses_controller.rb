class DosesController < ApplicationController
  before_action :set_cocktail, only: [:show, :new]

  def index
    @doses = Dose.all
  end

  def show

  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])

    if @dose.save
    redirect_to cocktail_path(@cocktail)
    else
    render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def dose_params
    params.require(:dose).permit(:description)
  end




end
