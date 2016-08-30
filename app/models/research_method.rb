class ResearchMethod < ActiveRecord::Base

  # Trung - Define model associations
  has_many :articles_research_methods
  has_many :articles, through: :articles_research_methods

end
