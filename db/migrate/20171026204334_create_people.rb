class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthdate
      t.string :cpf
      t.string :rg
      t.integer :gender
      t.integer :phone

      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
