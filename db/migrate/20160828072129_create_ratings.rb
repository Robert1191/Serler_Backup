class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value, nil: false
      t.integer :user_id, nil:false
      t.integer :article_id
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
