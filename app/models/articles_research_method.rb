class ArticlesResearchMethod < ActiveRecord::Base

  # Trung - Define model associations
  belongs_to :article, foreign_key: :article_id
  belongs_to :research_method, foreign_key: :research_method_id

end
