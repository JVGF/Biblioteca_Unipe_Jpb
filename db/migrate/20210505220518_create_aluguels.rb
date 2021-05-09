class CreateAluguels < ActiveRecord::Migration[6.0]
  def change
    create_table :aluguels do |t|
      t.decimal :preco, :decimal, :precision => 8, :scale => 2
      t.boolean :status
      t.datetime :data_retirada
      t.datetime :data_devolucao
      t.integer :livro_id
      t.integer :cliente_id

      t.timestamps
    end
  end
end
