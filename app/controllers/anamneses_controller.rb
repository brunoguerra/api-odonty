class AnamnesesController < ApplicationController
  before_action :set_anamnese, only: [:show, :update, :destroy]

  # GET /anamneses
  def index
    @anamneses = Anamnesis.all

    render json: @anamneses
  end

  # GET /anamneses/1
  def show
    render json: @anamnese
  end

  # POST /anamneses
  def create
    @anamnese = Anamnesis.new(anamnese_params)

    if @anamnese.save
      render json: @anamnese, status: :created, location: @anamnese
    else
      render json: @anamnese.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /anamneses/1
  def update
    if @anamnese.update(anamnese_params)
      render json: @anamnese
    else
      render json: @anamnese.errors, status: :unprocessable_entity
    end
  end

  # DELETE /anamneses/1
  def destroy
    @anamnese.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anamnese
      @anamnese = Anamnesis.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def anamnese_params
      params.require(:anamnese).permit(:anamnesis_model_id, :observation, :patient_id)
    end
end
