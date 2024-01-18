class ConsultantsController < ApplicationController
  def index
    @consultants = Consultant.all
  end

  def show
    @consultant = Consultant.find(params[:id])
  end

  def new
    @consultant = Consultant.new
  end

  def create
    @consultant = Consultant.new(consultant_params)
    @consultant.save
    redirect_to consultant_path(@consultant)
  end

  private

  def consultant_params
    params.require(:consultant).permit(:first_name, :last_name)
  end

end
