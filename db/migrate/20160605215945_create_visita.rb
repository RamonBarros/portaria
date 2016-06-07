class CreateVisita < ActiveRecord::Migration
  def change
    create_table :visita do |t|
      t.references :visitante, index: true, foreign_key: true
      t.datetime :dataEntrada
      t.datetime :dataSaida
      t.integer :conjunto
      t.string :responsavel

      t.timestamps null: false
    end
  end
end
