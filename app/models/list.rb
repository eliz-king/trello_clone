class List < ApplicationRecord
  belongs_to :board

  validates :task, presence: true, on: :save
  validates :body, allow_blank: true
end
