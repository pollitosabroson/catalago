class RegistroController < ApplicationController
  def index_reg
    @producto = Producto.all
  end

  def new_reg
    @producto = Producto.new
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

  def edit_prod
    @producto = Producto.find_by_slug params[:slug]
    @categorias = Categoria.all
  end

  def update_prod
    @poducto = Producto.find_by_slug params[:slug]
    if params[:categorias]
      params[:prducto][:categoria_id] = "{#{params[:categorias].join(',')}}"
    end
    if
      @producto.update_attributes params[:producto]
      redirect_to ver_path(@producto.slug)
    else
      render :edit_prod
    end
  end
  def dest_prod
    producto = Producto.find(params[:id])
    if producto.destroy
      redirect_to admin_prod_path
      flash[:notice] = "Se elimino el producto"
    else
      raise "algo salio mal "
    end
  end
end
