class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :user_id, nil:false
      t.integer :article_id
      t.text    :description
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
