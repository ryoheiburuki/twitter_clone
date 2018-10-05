Rails.application.routes.draw do
  resources :murmurs do
    collection do
      post :confirm
      get :top
    end
  end
end
