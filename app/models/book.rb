class Book < ApplicationRecord

  has_many :loans

  has_many :people, through: :loans

  has_and_belongs_to_many :topics

  def to_s
    title
  end






end
