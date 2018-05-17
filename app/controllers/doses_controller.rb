class DosesController < ApplicationController
  before_action :set_dose, only: [:show]

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
    @dose.save
    redirect_to dose_path(@dose)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_dose
    @dose = Dose.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def dose_params
    params.require(:dose).permit(:name)
  end




end
