Ecm::Videos::Backend::Engine.routes.draw do
  resources :categories do
    post :toggle_published, on: :member
  end
  
  resources :videos do
    post :reposition, on: :member
    post :toggle_published, on: :member
  end
  
  root to: 'home#index'
end
