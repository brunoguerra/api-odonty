require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = Patient.first
    
  end

  test "should get index" do
    get patients_url, as: :json
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { 
        patient: { 
          observation: @patient.observation, 
          responsable: @patient.responsable, 
          responsable_cpf: @patient.responsable_cpf,
          person_attributes: {
            name: @patient.person.name,
            birthdate: @patient.person.birthdate,
            cpf: @patient.person.cpf,
            rg: @patient.person.rg,
            gender: @patient.person.gender,
            phone: @patient.person.phone,
            address_attributes: {
              street: @patient.person.address.street ,
              postal_code: @patient.person.address.postal_code,
              neighborhood: @patient.person.address.neighborhood
            }
          }
        } 
      }, as: :json
    end

    assert_response 201
  end

  test "should show patient" do
    get patient_url(@patient), as: :json
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), 
    params: { 
      patient: { 
        observation: @patient.observation, 
        responsable: @patient.responsable, 
        responsable_cpf: @patient.responsable_cpf,
        person_attributes: {
          id: @patient.person.id,
          name: @patient.person.name,
          birthdate: @patient.person.birthdate,
          cpf: @patient.person.cpf,
          rg: @patient.person.rg,
          gender: @patient.person.gender,
          phone: @patient.person.phone,
          address_attributes: {
            id: @patient.person.address.id,
            street: @patient.person.address.street ,
            postal_code: @patient.person.address.postal_code,
            neighborhood: @patient.person.address.neighborhood,
            
          }
        }
      } 
    }, as: :json
    assert_response 200
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient), as: :json
    end

    assert_response 204
  end
end
