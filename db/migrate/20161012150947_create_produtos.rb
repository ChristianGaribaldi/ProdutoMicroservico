class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.float :precoUnitario
      t.integer :qtd_estoque

      t.timestamps null: false
    end
  end
end
