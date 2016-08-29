class CreateArticleTypes < ActiveRecord::Migration
  def change
    create_table :article_types do |t|
      t.string  :name, nil: false
      t.text    :description
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
