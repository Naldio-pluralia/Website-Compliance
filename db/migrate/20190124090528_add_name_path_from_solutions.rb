class AddNamePathFromSolutions < ActiveRecord::Migration[5.1]
  def change
    add_column :solutions, :name_path, :string
  end
end
