class CreateEncargados < ActiveRecord::Migration
  def self.up
#    drop_table :encargados
    create_table :encargados do |t|
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :encargados
  end
end
