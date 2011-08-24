class AddEstadoToTareas < ActiveRecord::Migration
  def self.up
    add_column :tareas, :estado, :string
  end

  def self.down
    remove_column :tareas, :estado
  end
end
