class CreateArticlesAuthors < ActiveRecord::Migration
  def change
    create_table :articles_authors do |t|
      t.integer :article_id, nil: false
      t.integer :author_id, nil: false
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
