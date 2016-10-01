Rails.application.routes.draw do
 resources :players, only: [:index, :show]
end
