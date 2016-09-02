class Author < ActiveRecord::Base

  # Trung - Define model associations
  has_many :articles_authors
  has_many :articles, through: :articles_authors

  scope :author_by, -> (key, operator, value) {
    case operator
      when 0 # contains
        arel_table[key].matches "%#{value}%"
      when 1 # does not contains
        arel_table[key].does_not_match "%#{value}%"
      when 2 # begins with
        arel_table[key].matches "#{value}%"
      when 3 # end with
        arel_table[key].matches "%#{value}"
      when 4 # is equal to
        arel_table[key].eq value
      when 5 # is less than
        arel_table[key].lt value
      when 6 # is less than or equal
        arel_table[key].lteq value
      when 7 # is more than
        arel_table[key].gt value
      when 8 # is more than or equal
        arel_table[key].gteq value
    end
  }

end
