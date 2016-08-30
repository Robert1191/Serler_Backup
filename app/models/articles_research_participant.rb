class ArticlesResearchParticipant < ActiveRecord::Base

  # Trung - Define model associations
  belongs_to :article, foreign_key: :article_id
  belongs_to :research_participant, foreign_key: :research_participant_id

end
