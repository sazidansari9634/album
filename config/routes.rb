Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  #root "albums#index"
  resources :albums do
    member do
      delete :purge_avatar
    end
  end

  #get 'home#index'
  
  delete "attachments/:id/purge", to: "attachments#purge", as: "purge_attachment"
 
end
