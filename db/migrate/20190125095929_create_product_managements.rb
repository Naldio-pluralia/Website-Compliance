class CreateProductManagements < ActiveRecord::Migration[5.1]
  def change
    create_table :product_managements do |t|
      t.string :name
      t.text :description
      t.string :name_path

      t.timestamps
    end
  end
end
