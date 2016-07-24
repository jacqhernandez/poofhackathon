class LguResponsesController < ApplicationController
  before_action :set_lgu_response, only: [:show]
  
  def index
    @lgu_responses = LguResponse.all
  end

  def new
    @lgu_response = LguResponse.new
  end

  def create
    @lgu_response = LguResponse.new(lgu_response_params)
    @residents = Resident.where(area_id: current_lgu_officer.area_id)

    respond_to do |format|
      if @lgu_response.save
        format.html { redirect_to root_path, notice: 'LGU Response was successfully created.' }
        format.json { render :show, status: :created, location: @lgu_response }
      else
        format.html { render :new }
        format.json { render json: @lgu_response.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lgu_response
      @lgu_response = LguResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lgu_response_params
      params.require(:lgu_response).permit!#(:id_number, :first_name, :last_name, :year, :course, :birthday, :email, :status, :department, :first_sem_points, :total_points)
    end
end
