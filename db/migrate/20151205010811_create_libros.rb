class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :titulo
      t.text :descripcion
      t.integer :ISBN

      t.timestamps null: false
    end
  end
end
