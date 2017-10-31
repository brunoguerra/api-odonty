class CreateAnamnesisModels < ActiveRecord::Migration[5.1]
  def change
    create_table :anamnesis_models do |t|
      t.string :description

      t.timestamps
    end
  end
end
