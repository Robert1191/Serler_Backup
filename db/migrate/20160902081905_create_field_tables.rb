class CreateFieldTables < ActiveRecord::Migration
  def change
    create_table :field_tables do |t|
      t.string :name, nil: false
      t.string :field, nil: false
      t.string :table, nil: false
      t.string :join_table, nil: false

      t.timestamps null: false
    end
  end
end
