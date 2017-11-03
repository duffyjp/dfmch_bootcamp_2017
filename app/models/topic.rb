class Topic < ApplicationRecord

  has_and_belongs_to_many :books


  def to_s
    name
  end

  def self.books
    Book.where(id: all.map(&:books).map(&:ids).flatten).distinct
  end

  def self.search(string)

    results = Topic.none
    string.split.each do |string|
      results += where("name LIKE ?", "%#{string}%")
    end

    Topic.where(id: results.uniq.map(&:id))

      #all.where("name LIKE ?", "%#{string}%")
  end



end
