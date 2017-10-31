class Question < ApplicationRecord
  enum question_type: [
                        :yes_no, 
                        :yes_no_i_dont_know,
                        :yes_no_i_dont_know_and_text,
                        :only_text4,
                        :left_right_i_dont_know]

  validates_presence_of :description, :question_type

  
 # create validation, 
 # a question type cant be changed if the question has already been answered 
end
