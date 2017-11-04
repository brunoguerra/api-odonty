class AnamnesisModelBuilder

  def initialize(p_anamnesis_model)
    @anamnesis_model = p_anamnesis_model
  end

  def build(l_questions = [])

    # get Id list of questions on an Anamnesis Model
    l_existing_questions_id = @anamnesis_model.questions.map { |hash| hash[:id]}
    
    # get non existing elements on anamnesis
    l_not_present_elements =  l_questions.reject { |question| l_existing_questions_id.include? question.id }
    
    #build anamnesisQuestion for each non existing question
    l_not_present_elements.each do |question|    
      @anamnesis_model.anamnesis_model_questions.build enabled: false, question: question
    end

    @anamnesis_model
  end
  
end