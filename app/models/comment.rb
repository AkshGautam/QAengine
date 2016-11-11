class Comment < ApplicationRecord
  belongs_to :question
  default_scope -> { order(created_at: :desc) }
  validates :question_id, presence: true
  validates :content, presence: true
end
