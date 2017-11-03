class Loan < ApplicationRecord

  belongs_to :person
  belongs_to :book


  scope :overdue, -> { where("due_date < ?", Date.today) }



end

