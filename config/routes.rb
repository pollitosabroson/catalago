Catalog::Application.routes.draw do
  root :to => "paginas#home"

  get "/registro", :to => "paginas#registro"
  get "/catalogo", :to => "paginas#catalago"

end
