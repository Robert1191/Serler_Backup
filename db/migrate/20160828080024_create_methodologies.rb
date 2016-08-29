class CreateMethodologies < ActiveRecord::Migration
  def change
    create_table :methodologies do |t|
      t.string  :name, nil: false
      t.text    :description
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
