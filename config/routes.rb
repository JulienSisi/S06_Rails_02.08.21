Rails.application.routes.draw do
  get 'message/show'
  get 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/static_pages/contact', to: 'static_pages#contact'
  #on cherche la route dynamique
  get 'message/:user_entry', to: 'message#show'
end

