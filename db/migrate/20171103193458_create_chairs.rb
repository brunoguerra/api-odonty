class CreateChairs < ActiveRecord::Migration[5.1]
  def change
    create_table :chairs do |t|
      t.string :description

      t.timestamps
    end
  end
end
