class Comentario < ActiveRecord::Base
  belongs_to :libro
  belongs_to :user

  validates_presence_of :comentario
  validates :calificacion, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "Entre 1 y 5 gueva"}
  validates :user_id, uniqueness: true
end
