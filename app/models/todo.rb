class Todo < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :status, presence: true, inclusion: { in: %w[complete incomplete] }
end
