class Book < ActiveRecord::Base
  has_many :reviews
  mount_uploader :cover, CoverUploader

end
