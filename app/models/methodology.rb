class Methodology < ActiveRecord::Base

  # Trung - Define model associations
  has_many :articles_methodologies
  has_many :articles, through: :articles_methodologies

end
