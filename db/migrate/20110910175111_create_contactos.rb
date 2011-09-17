class CreateContactos < ActiveRecord::Migration
  def self.up
   # drop_table :contactos
    create_table :contactos do |t|
      t.string :nombre
      t.references :empresa
      t.string :telefono
      t.string :celular
      t.text :comentario

      t.timestamps
    end
  end

  def self.down
    drop_table :contactos
  end
end
