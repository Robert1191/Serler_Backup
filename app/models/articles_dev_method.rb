class ArticlesDevMethod < ActiveRecord::Base

  # Trung - Define model associations
  belongs_to :article, foreign_key: :article_id
  belongs_to :dev_method, foreign_key: :dev_method_id

end
