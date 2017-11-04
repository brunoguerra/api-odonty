class AnamnesisBuilder

  def initialize(anamnesis)
    @anamnesis = anamnesis
  end

  def build
    # get Id list of questions on an Anamnesis Model
    l_existing_questions_id = @anamnesis.answers.map { |hash| hash[:question_id]}

    # get non existing elements on anamnesis
    l_not_present_elements =  @anamnesis.questions.reject { |question| l_existing_questions_id.include? question.id }

    #build anamnesisQuestion for each non existing question
    l_not_present_elements.each do |question|    
      @anamnesis.answers.build question: question
    end
    @anamnesis
    
  end
  
end