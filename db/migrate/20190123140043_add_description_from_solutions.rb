class AddDescriptionFromSolutions < ActiveRecord::Migration[5.1]
  def change
    add_column :solutions, :description, :text
  end
end
