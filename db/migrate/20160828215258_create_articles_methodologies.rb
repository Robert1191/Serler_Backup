class CreateArticlesMethodologies < ActiveRecord::Migration
  def change
    create_table :articles_methodologies do |t|
      t.integer :article_id, nil: false
      t.integer :methodology_id, nil: false
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
