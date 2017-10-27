class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update, :destroy]

  # GET /patients
  def index
    @patients = Patient.all

    render json: @patients
  end

  # GET /patients/1
  def show
    render json: @patient
  end

  # POST /patients
  def create
    @patient = Patient.new(patient_params)
    # Do I really have to do this for polymorphic associations ?
    @patient.person.address.addressable = @patient.person

    if @patient.save
      render json: @patient, status: :created, location: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patients/1
  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patients/1
  def destroy
    @patient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_params
      params.require(:patient).permit(
        :observation, :responsable, :responsable_cpf,
        person_attributes: [
          :id, :name,:birthdate,:cpf,:rg,:gender,:phone,
          address_attributes: [
            :id,:postal_code,:street,:adress_number,:complement,:neighborhood
          ]
        ],
        additional_attributes: [:id, :email,:medical_record_number,:reason_id]
      )
    end
end
