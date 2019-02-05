class CreateBackofficeCompliances < ActiveRecord::Migration[5.1]
  def change
    create_table :backoffice_compliances do |t|
      t.string :title
      t.text :body
      t.date :published_at

      t.timestamps
    end
  end
end
