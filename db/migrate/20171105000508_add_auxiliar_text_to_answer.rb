class AddAuxiliarTextToAnswer < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :auxiliar_text, :string
  end
end
