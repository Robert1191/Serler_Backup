class CreateArticlesDevMethods < ActiveRecord::Migration
  def change
    create_table :articles_dev_methods do |t|
      t.integer :article_id, nil: false
      t.integer :dev_method_id, nil: false
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
