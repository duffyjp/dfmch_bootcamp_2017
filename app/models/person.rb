class Person < ApplicationRecord



  default_scope -> { order(:name) }


end
