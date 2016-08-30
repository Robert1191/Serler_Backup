class ArticlesAuthor < ActiveRecord::Base

  # Trung - Define model associations
  belongs_to :author, foreign_key: :author_id
  belongs_to :article, foreign_key: :article_id

end
