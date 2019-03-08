class Board < ApplicationRecord
  belongs_to :user

  has_many :lists
    validates :title, length: { minimum: 2 }
    validates :title, length: { maximum: 500 }
 
end
