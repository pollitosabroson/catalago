class PaginasController < ApplicationController
  def home
  end
  def registro
  end
  def catalago
    @catalago = Producto.all
  end
end
