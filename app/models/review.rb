class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates_presence_of :comment
  validates :score, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "Between 1 y 5"}
  validates :user_id, uniqueness: {scope: :book_id}
  def self.my_review?(user, review)
    review.user_id.eql? user
  end
end
