Rails.application.routes.draw do
  resources :birds
  # , only: [:index, :show, :create, :update, :destroy]
  # Since we are running all RESTful routes, we can omit the only keyword option
  patch "/birds/:id/like", to: "birds#increment_likes"
end
