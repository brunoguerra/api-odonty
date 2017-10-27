class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :postal_code
      t.string :street
      t.string :adress_number
      t.string :complement
      t.string :neighborhood
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end
  end
end
