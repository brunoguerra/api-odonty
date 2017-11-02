class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.belongs_to :anamnesis, index: true
      t.belongs_to :question, index: true
      
      t.timestamps
    end
  end
end

