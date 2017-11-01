class AnamnesesController < ApplicationController
  before_action :set_patient, only: [:show,:create, :update, :destroy]

  # GET /anamneses/1
  def show
    render json: @patient.anamnesis
  end

  # POST /anamneses
  def create
    @patient.anamnesis = Anamnesis.new(anamnesis_params)

    if @patient.anamnesis.save
      render json: @patient.anamnesis, status: :created, location: @patient
    else
      render json: @patient.anamnesis.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /anamneses/1
  def update
    if @patient.anamnesis.update(anamnesis_params)
      render json: @patient.anamnesis
    else
      render json: @patient.anamnesis.errors, status: :unprocessable_entity
    end
  end

  # DELETE /anamneses/1
  def destroy
    @patient.anamnesis.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    # Only allow a trusted parameter "white list" through.
    def anamnesis_params
      params.require(:anamnesis).permit(:anamnesis_model_id, :observation)
    end
end
