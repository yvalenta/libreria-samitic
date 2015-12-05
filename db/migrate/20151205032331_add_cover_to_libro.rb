class AddCoverToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :cubierta, :string
  end
end
