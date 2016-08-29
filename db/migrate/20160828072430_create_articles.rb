class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string  :title
      t.string  :journal
      t.integer :year
      t.integer :volume
      t.integer :number
      t.integer :month
      t.string  :pages
      t.string  :isbn
      t.string  :doi
      t.string  :url
      t.text    :keyword
      t.text    :abstract
      t.text    :research_questions
      t.text    :research_metrics
      t.integer :type_id
      t.integer :status_id
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
