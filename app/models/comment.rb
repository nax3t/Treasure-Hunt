class Comment < ActiveRecord::Base
  belongs_to :treasure
  validates :bru, presence: true,
                      length: { minimum: 2 }
  validates :comment, presence: true,
                      length: { minimum: 8 }
end
