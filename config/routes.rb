Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope :api, defaults: { format: :json } do
    resources :users, only: [:index, :show, :create, :update, :destroy]
    resource :user_count, only: :show
  end
end
