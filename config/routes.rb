Catalog::Application.routes.draw do
  root :to => "paginas#home"

  get "/registro", :to => "paginas#registro"
  get "/registro/new", :to => "paginas#registro", :as => 'new_reg'
  get "/registro", :to => "paginas#registro", :as => 'create_reg'
  get "/catalogo", :to => "paginas#catalago"

end
