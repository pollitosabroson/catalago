class CategoriasController < ApplicationController
  def index_cat
    @categoria = Categoria.all
  end

  def new_cate
    @categoria = Categoria.new
  end

  def create_cate
    @categoria = Categoria.find_by_slug params[:categoria]
    if @categoria.save
      redirect_to categoria_path
    else
      render :new_cat
    end 
  end

  def edit_cate
    @categoria = Categoria.find(params[:slug])
  end

  def update_cate
    @categoria = Categoria.find(params[:slug])
    if @categoria.udpade_attributes params[:categoria]
      redirect_to admin
  end 
end 
