class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Nombre
      t.integer :Precio
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
