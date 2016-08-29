class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string  :first_name, nil: false
      t.string  :middle_name
      t.string  :last_name, nil: false
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
