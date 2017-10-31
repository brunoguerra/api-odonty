class CreateAnamnesisModelQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :anamnesis_model_questions do |t|
      t.belongs_to :anamnesis_model, index: true
      t.belongs_to :question, index: true
      t.boolean :enabled, :default => false

      t.timestamps
    end

    drop_table :anamnesis_models_questions
  end
end
