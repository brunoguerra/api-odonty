class CreateAdditionals < ActiveRecord::Migration[5.1]
  def change
    create_table :additionals do |t|
      t.string :email
      t.string :medical_record_number
      t.integer :reason_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
