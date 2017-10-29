class Task < ApplicationRecord
  validates :content, presence: ture, length: {maximum:255}
  validates :title, presence: true, length:{maximum:255}
  validates :status, presence: true, length:{mixmum:10}
end
