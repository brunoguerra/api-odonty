class CreateAnamneses < ActiveRecord::Migration[5.1]
  def change
    create_table :anamneses do |t|
      t.belongs_to :anamnesis_model, index: true
      t.belongs_to :patient, index: true
      t.text :observation
      
      t.timestamps
    end
  end
end
