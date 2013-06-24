class RegistroController < ApplicationController
  def index_reg
    @producto = Producto.all
  end

  def new_reg
    @producto = Producto.new
    @nombre = Nombre.all
    @descripcion = Descripcion.all
    @categoria = Categoria.all
    @marca = Marca.all
  end

  def create_reg
    @producto = Producto.new params [:producto]
    if producto.save
      rederict_to ver_path(@producto.slug)
    else
      render :new_reg
    end
  end  
end
