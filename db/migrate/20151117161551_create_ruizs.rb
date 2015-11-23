class CreateRuizs < ActiveRecord::Migration
  def change
    create_table :ruizs do |t|
      t.string :Cliente
      t.string :Direccion
      t.integer :TotalFactura
      t.datetime :Fecha

      t.timestamps null: false
    end
  end
end
