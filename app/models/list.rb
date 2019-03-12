class List < ApplicationRecord
  belongs_to :board
  has_many :tasks, dependent: :destroy

  validates :list_name, allow_blank: false, length: {maximum: 500}

end
