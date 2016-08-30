class Author < ActiveRecord::Base

  # Trung - Define model associations
  has_many :articles_authors
  has_many :articles, through: :articles_authors

end
