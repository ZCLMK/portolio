Rails.application.routes.draw do
  resources :showcases, except: [:show]
  get 'showcase/:id' => 'showcases#show', as: 'portfolio_show' #'as:' => Prefixe personnalisé pour ce controller (rediriger d'éventuels liens) dans la view.
  get 'about' => 'pages#about' # equivalent à: get 'about', to: 'pages#about'
  get 'contact' => 'pages#contact'

  resources :blogs do
    member do 
      get :toggle_status
    end
  end
      
root to: 'pages#home'
end
