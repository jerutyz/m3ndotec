class CreateTareas < ActiveRecord::Migration
  def self.up
#    drop_table :tareas
    create_table :tareas do |t|
      t.references :empresa
      t.references :encargado
      t.string :nombre
      t.string :estado
      t.date :fecha
      t.integer :horas
      t.text :detalle

      t.timestamps
    end
  end

  def self.down
    drop_table :tareas
  end
end
