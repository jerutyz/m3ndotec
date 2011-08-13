class CreateTareas < ActiveRecord::Migration
  def self.up
    create_table :tareas do |t|
      t.string :nombre
      t.string :empresa
      t.string :fecha
      t.string :horas
      t.text :detalle

      t.timestamps
    end
  end

  def self.down
    drop_table :tareas
  end
end
