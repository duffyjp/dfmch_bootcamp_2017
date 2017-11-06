class Topic < ApplicationRecord

  has_and_belongs_to_many :books


  def to_s
    name
  end

  def self.books
    Book.where(id: all.map(&:books).map(&:ids).flatten).distinct
  end

  def self.search(string)
    Topic.where(id: string.split.map{ |s| where("name LIKE ?", "%#{s}%").ids }.flatten)
  end

end
