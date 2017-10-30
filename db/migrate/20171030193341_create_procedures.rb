class CreateProcedures < ActiveRecord::Migration[5.1]
  def change
    create_table :procedures do |t|
      t.string :description
      t.integer :procedure_category_id

      t.timestamps
    end
  end
end
