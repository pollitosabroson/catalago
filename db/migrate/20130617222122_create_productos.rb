class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :slug
      t.text :descripcion
      t.integer :marca_id

      t.timestamps
    end
  end
end
