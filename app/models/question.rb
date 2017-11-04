class Question < ApplicationRecord
  after_create :do_association_with_anamnesis_models

  enum question_type: [
                        :yes_no, 
                        :yes_no_i_dont_know,
                        :yes_no_i_dont_know_and_text,
                        :only_text,
                        :left_right_i_dont_know]

  enum is_an_alert_when: [:yes,:no]

  has_many :anamnesis_model_questions
  has_many :anamnesis_models, :through => :anamnesis_model_questions
  has_many :anamneses, :through => :anamnesis_models
  has_many :answers, :through => :anamneses

  validates_presence_of :description, :question_type
  validates_presence_of :auxiliar_text,  if: :has_text_on_question_type? 
  validates_presence_of :is_an_alert_when,  if: :is_an_alert? 
  validates_presence_of :alert_text,  if: :is_an_alert? 
  

  private

    def has_text_on_question_type?
      !self.question_type.nil? and self.question_type.to_sym.in? [:yes_no_i_dont_know_and_text] 
    end

    def do_association_with_anamnesis_models
      AnamnesisModel.all.each do |anamnesis_model|
        AnamnesisModelQuestion.create(anamnesis_model: anamnesis_model, question: self)
      end
    end
 
end
