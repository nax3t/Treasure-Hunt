class Comment < ActiveRecord::Base
  belongs_to :treasure
  validates :bru, presence: true
  validates :comment, presence: true
end
