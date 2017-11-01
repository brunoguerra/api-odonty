class CreateAnamneses < ActiveRecord::Migration[5.1]
  def change
    create_table :anamneses do |t|
      t.integer :anamnesis_model_id
      t.text :observation
      t.integer :patient_id

      t.timestamps
    end
  end
end
