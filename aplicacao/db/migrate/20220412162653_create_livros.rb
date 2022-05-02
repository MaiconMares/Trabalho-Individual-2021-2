# frozen_string_literal: true

# Top-level comment just to avoid Rubocop annoying
class CreateLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :autor
      t.integer :ano
      t.string :editora
      t.integer :edicao
      t.boolean :livro_eletronico

      t.timestamps
    end
  end
end
