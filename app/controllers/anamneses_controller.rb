class AnamnesesController < ApplicationController
  before_action :set_anamnesis, only: [:show, :update, :destroy]

  # GET /anamneses
  def index
    @anamneses = Anamnesis.all

    render json: @anamneses
  end

  # GET /anamneses/1
  def show
    render json: @anamnesis
  end

  # POST /anamneses
  def create
    @anamnesis = Anamnesis.new(anamnesis_params)

    if @anamnesis.save
      render json: @anamnesis, status: :created, location: @anamnesis
    else
      render json: @anamnesis.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /anamneses/1
  def update
    if @anamnesis.update(anamnesis_params)
      render json: @anamnesis
    else
      render json: @anamnesis.errors, status: :unprocessable_entity
    end
  end

  # DELETE /anamneses/1
  def destroy
    @anamnesis.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anamnesis
      @anamnesis = Anamnesis.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def anamnesis_params
      params.require(:anamnesis).permit(:anamnesis_model_id, :observation, :patient_id)
    end
end
