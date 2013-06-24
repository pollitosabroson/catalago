Catalog::Application.routes.draw do
  root :to => "paginas#home"

  get "/registro", :to => "registro#registro"
  get "/registro", :to => "registro#new_reg", :as => 'new_reg'
  post "/registro", :to => "registro#create_reg", :as => 'create_reg'
  get "/catalogo", :to => "paginas#catalago"

end
