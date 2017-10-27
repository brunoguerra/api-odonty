class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients, :id => false do |t|
      t.primary_key :person_id  # Normal integer PK, shouldn't auto-increment
      t.text :observation
      t.string :responsable
      t.string :responsable_cpf

      t.timestamps
    end
  end
end
