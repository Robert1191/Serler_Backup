class CreateArticlesResearchParticipants < ActiveRecord::Migration
  def change
    create_table :articles_research_participants do |t|
      t.integer :article_id, nil: false
      t.integer :research_participant_id, nil: false
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
