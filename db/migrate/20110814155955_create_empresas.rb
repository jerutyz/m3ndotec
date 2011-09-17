class CreateEmpresas < ActiveRecord::Migration
  def self.up
#    drop_table :empresas
      create_table :empresas do |t|
      t.string :nombre
      t.string :telefono
      t.text :detalle
      #t.string :contacto

      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
