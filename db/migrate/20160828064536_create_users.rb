class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :first_name, nil: false
      t.string  :middle_name
      t.string  :last_name, nil: false
      t.string  :email, nil:false
      t.string  :gender
      t.date    :dob
      t.string  :affiliation
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
