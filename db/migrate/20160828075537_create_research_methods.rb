class CreateResearchMethods < ActiveRecord::Migration
  def change
    create_table :research_methods do |t|
      t.string  :name, nil: false
      t.text    :description
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
