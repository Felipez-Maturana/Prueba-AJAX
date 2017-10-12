Rails.application.routes.draw do
  get 'panel/admin'

  get 'dashboard/index'

  resources :complaints
  resources :companies do
    collection do
      get 'new_complaint'
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dashboard#index'

end
