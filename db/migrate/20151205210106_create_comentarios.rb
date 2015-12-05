class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentario
      t.integer :calificacion, limit: 2
      t.integer :user_id
      t.references :libro, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
