Rails.application.routes.draw do
  get 'ordenes_servicios_historica/index'

  get 'ordenes_servicios_historica/show'

  resources :ordenes_servicios
  resources :listas_precios
  resources :categorias_vehiculos
  resources :tarifas_servicios
  resources :depositos_salidas
  resources :depositos_inventarios
  resources :asignaciones
  resources :operadores
  resources :gruas
  resources :empresas
  resources :combustibles
  resources :colores
  resources :configuraciones
  resources :ciudades
  resources :clientes
  resources :pais
  resources :sub_marcas
  resources :tipo_vehiculos
  resources :marcas
  resources :roles
  resources :estados
  resources :pais
  resources :ordenes_servicios_map, only: [:index]
  resources :ordenes_servicios_historica, only: [:show]
  devise_for :admins , skip: :registrations
  get "ordenes_servicios_historica/index" => "ordenes_servicios_historica#index", :as => :servicios_historica_index
  # get '/csrf_token_error'=> 'listas_precios#csrf_token_error'
  get "service_order_map_data" => "ordenes_servicios_map#service_order_map_data", as: :service_order_map_data
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise_scope :user do
  # match '/sign-in' => "devise/sessions#new", :as => :login
  # end

  post "/ordenes_servicios/GetOperadores" => "ordenes_servicios#GetOperadores", :as => :GetOperadores

  post "/ordenes_servicios/GetAllMarcas" => "ordenes_servicios#GetAllMarcas", :as => :GetAllMarcas

  post "/ordenes_servicios/GetAllTipoVehiculos" => "ordenes_servicios#GetAllTipoVehiculos", :as => :GetAllTipoVehiculos

  #post 'ordenes_servicios/GetOperadores'

  get "/dashboard" => "dashboard#index"

  root :to => redirect("/admins/sign_in")
  match '*path' => redirect('/'), via: [:get,:post]
end
