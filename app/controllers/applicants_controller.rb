class ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show, :edit, :update, :destroy]

  # GET /applicants/1
  # GET /applicants/1.json
  def show
  end

  # GET /applicants/new
  def new
    @applicant = Applicant.new
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(applicant_params)
    @applicant.save

    letters = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
    code = (0...7).map { letters[rand(letters.length)] }.join
    @applicant.update(confirmation_code: code)

    redirect_to new_user_registration_path(id: @applicant.id)
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant
      @applicant = Applicant.find(params[:id])
    end

    def applicant_params
      params.require(:applicant).permit!
    end
end

