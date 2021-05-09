class CreateLivros < ActiveRecord::Migration[6.0]
  def change
    create_table :livros do |t|
      t.string :autor
      t.string :titulo
      t.string :genero
      t.boolean :disponivel

      t.timestamps
    end
  end
end
