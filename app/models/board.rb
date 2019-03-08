class Board < ApplicationRecord
  belongs_to :user

  class Board < ActiveRecord::Base
    validates :title, length: { minimum: 2 }
    validates :title, length: { maximum: 500 }
  
end
