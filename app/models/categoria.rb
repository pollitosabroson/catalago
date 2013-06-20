class Categoria < ActiveRecord::Base
  attr_accessible :nombre, :parent_id, :slug
end
