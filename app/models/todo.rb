class Todo < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :status, presence: true, inclusion: { in: %w[complete incomplete] }
end
