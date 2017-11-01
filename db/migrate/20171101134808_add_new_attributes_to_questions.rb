class AddNewAttributesToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :auxiliar_text, :string
    add_column :questions, :is_an_alert, :boolean, :default => false
    add_column :questions, :is_an_alert_when, :integer
    add_column :questions, :alert_text, :string
  end
end
