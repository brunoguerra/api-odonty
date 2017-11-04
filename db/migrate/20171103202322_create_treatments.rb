class CreateTreatments < ActiveRecord::Migration[5.1]
  def change
    create_table :treatments do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :plan, index: true
      
      t.timestamps
    end
  end
end
