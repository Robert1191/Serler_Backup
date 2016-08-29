class CreateUsersRoles < ActiveRecord::Migration
  def change
    create_table :users_roles do |t|
      t.integer :user_id, nil: false
      t.integer :role_id, nil: false
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
