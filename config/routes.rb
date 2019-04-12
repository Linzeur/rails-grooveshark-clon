Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :albums
    resources :artists 

    resources :songs, only: [ :index, :show] do
      member do
        get :artists
        get :albums

        put "/progress" => :song_progress
        put "/rating" => :song_rating 
      end
    end

  end


end
