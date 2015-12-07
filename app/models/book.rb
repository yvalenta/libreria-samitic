class Book < ActiveRecord::Base
  has_many :reviews
  mount_uploader :cover, CoverUploader

  validates_presence_of :title, :description, :isbn
  validates :isbn, uniqueness: true
end
