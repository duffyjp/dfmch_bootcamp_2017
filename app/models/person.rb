class Person < ApplicationRecord

  has_many :loans

  has_many :books, through: :loans


  default_scope -> { order(:name) }

  def to_s
    name
  end

end
