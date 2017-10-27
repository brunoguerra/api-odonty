class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :postal_code
      t.string :street
      t.string :adress_number
      t.string :complement
      t.string :neighborhood
      t.references :addressable, polymorphic: true, index: true
      
      t.timestamps
    end
  end
end
