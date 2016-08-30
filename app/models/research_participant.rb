class ResearchParticipant < ActiveRecord::Base

  # Trung - Define model associations
  has_many :articles_research_participants
  has_many :articles, through: :articles_research_participants

end
