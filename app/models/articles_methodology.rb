class ArticlesMethodology < ActiveRecord::Base

  # Trung - Define model associations
  belongs_to :article, foreign_key: :article_id
  belongs_to :methodology, foreign_key: :methodology_id

end
