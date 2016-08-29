class CreateResearchParticipants < ActiveRecord::Migration
  def change
    create_table :research_participants do |t|
      t.string  :name, nil: false
      t.text    :description
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
