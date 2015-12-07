class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates_presence_of :comment
  validates :score, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "Entre 1 y 5"}
  validates :user_id, uniqueness: true
end
