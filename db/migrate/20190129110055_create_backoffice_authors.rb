class CreateBackofficeAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :backoffice_authors do |t|
      t.string :name
      t.date :date_of_birth
      t.text :description

      t.timestamps
    end
  end
end
