class CreateProductConsults < ActiveRecord::Migration[5.1]
  def change
    create_table :product_consults do |t|
      t.string :name
      t.text :description
      t.string :name_path

      t.timestamps
    end
  end
end
