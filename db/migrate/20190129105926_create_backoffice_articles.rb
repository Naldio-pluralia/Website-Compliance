class CreateBackofficeArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :backoffice_articles do |t|
      t.string :title
      t.text :body
      t.date :published_at
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
