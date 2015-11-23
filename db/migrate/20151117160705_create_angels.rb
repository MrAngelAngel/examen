class CreateAngels < ActiveRecord::Migration
  def change
    create_table :angels do |t|
      t.string :Nombre
      t.integer :Cantidad
      t.integer :Precio
      t.datetime :Fecha
      t.boolean :Credito

      t.timestamps null: false
    end
  end
end
