class List < ApplicationRecord
  belongs_to :board
  has_many :tasks

  validates :task, presence: true, on: :save
  validates :body, allow_blank: true, length: {maximum: 500}

end
