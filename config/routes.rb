Rails.application.routes.draw do
  resources :lists, only: %i[show new create destroy index] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end
