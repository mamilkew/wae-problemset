Rails.application.routes.draw do

  resources :housing_details
  resources :housing_detail_managements
  get 'administration/userlist'
  get 'administration/banuser'
  get 'administration/activeuser'
  post 'administration/assignrole'
  get 'administration/statistics'

  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }

  root 'home#index'
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
