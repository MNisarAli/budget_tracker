Rails.application.routes.draw do
  # Define devise routes for users
  devise_for :users

  # Define routes for users, categories, and expenses
  resources :users do
    resources :categories do
      resources :expenses
    end
  end

  # Defines the root path route ("/")
  unauthenticated do  # Define the root route for non-logged-in users
    root 'users#index', as: :unauthenticated_root
  end

  authenticated :user do  # Define the root route for logged-in users
    root 'categories#index', as: :authenticated_root
  end
end
