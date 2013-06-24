Catalog::Application.routes.draw do
  root :to => "paginas#home"

  get "/registro", :to => "paginas#registro"
  get "/registro", :to => "paginas#registro", :to => 'new_reg'
  get "/registro", :to => "paginas#registro", :to => 'create_reg'
  get "/catalogo", :to => "paginas#catalago"

end
