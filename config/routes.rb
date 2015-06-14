Rails.application.routes.draw do
 devise_for :users, :controllers => { :registrations => "registrations" }, :skip => [:registrations]
  as :user do
    post "/users" => "devise/registrations#create", :as => :user_registration
    get "/users/new" => "devise/registrations#new", :as => :new_user_registration
    get "/users/edit" => "devise/registrations#edit", :as => :edit_user_registration
    put "/users" => "devise/registrations#update"
    get "/delete_user", :to => "devise/registrations#destroy"
  end  
  
  #resources :projects, only: [:index]
  namespace :admin do 
    get '', to: 'dashboard#index', as: '/' 
    # get '/index', :controller => 'dashboard_controller', :action => 'index'
    get "/users/new" => "devise/registrations#new", :as => :new_user_registration
  end 

  get 'brand/home'
  get '/software', :controller => 'brand', :action =>'software'
  get '/web', :controller => 'brand', :action =>'web'
  get '/blog', :controller => 'articles', :action => 'index'
  get '/usuario', :controller => 'articles', :action => 'usuario'
  get '/projects', :controller => 'projects', :action => 'index'
  get '/vistaSoftware', :controller => 'projects', :action => 'vistaSoftware'
  get '/vistaWeb', :controller => 'projects', :action => 'vistaWeb'
  get '/webProject', :controller => 'projects', :action => 'webProject'
  get '/softwareProject', :controller => 'projects', :action => 'softwareProject'
  resources :articles do
  resources :comments
  end

  resources :projects do
    resources :projects
    get '/vistaSoftware', :controller => 'projects', :action => 'vistaSoftware'
    get '/vistaWeb', :controller => 'projects', :action => 'vistaWeb'
    get '/webProject', :controller => 'projects', :action => 'webProject'
    get '/softwareProject', :controller => 'projects', :action => 'softwareProject'

  end

  get '/:locale' => 'brand#home'
  root to:'brand#home'
end
