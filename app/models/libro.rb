class Libro < ActiveRecord::Base
  has_many :comentarios
  mount_uploader :cubierta, CubiertaUploader

  validates_presence_of :titulo, :descripcion, :ISBN
  validates :ISBN, uniqueness: true

end
