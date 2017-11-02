class Question < ApplicationRecord
  enum question_type: [
                        :yes_no, 
                        :yes_no_i_dont_know,
                        :yes_no_i_dont_know_and_text,
                        :only_text,
                        :left_right_i_dont_know]

  enum is_an_alert_when: [:yes,:no]

  validates_presence_of :description, :question_type
  validates_presence_of :auxiliar_text,  if: :has_text_on_question_type? 
  validates_presence_of :is_an_alert_when,  if: :is_an_alert? 
  validates_presence_of :alert_text,  if: :is_an_alert? 
  

  private

    def has_text_on_question_type?
      !self.question_type.nil? and self.question_type.to_sym.in? [:yes_no_i_dont_know_and_text] 
    end
 # create validation, 
 # a question type cant be changed if the question has already been answered 


end
