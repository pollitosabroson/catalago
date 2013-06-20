class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nombre
      t.string :slug
      t.integer :parent_id

      t.timestamps
    end
  end
end
