class CreatePorteiros < ActiveRecord::Migration
  def change
    create_table :porteiros do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :telefone

      t.timestamps null: false
    end
  end
end
