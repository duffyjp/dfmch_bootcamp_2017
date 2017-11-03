class Book < ApplicationRecord

  has_many :loans

  has_many :people, through: :loans

  def to_s
    title
  end

end
