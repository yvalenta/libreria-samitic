class AddPermisoToUser < ActiveRecord::Migration
  def change
    add_column :users, :permiso, :integer, default: 0
  end
end
