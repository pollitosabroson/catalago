class Producto < ActiveRecord::Base
  attr_accessible :descripcion, :marca_id, :nombre, :slug, :categoria_id
end
