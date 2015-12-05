class Libro < ActiveRecord::Base

  mount_uploader :cubierta, CubiertaUploader
end
