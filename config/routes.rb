Rails.application.routes.draw do
  resources :movies

  scope '/movies' do

    get '/', to: 'movies#index'
    get '/:id', to: 'movies#show'

  end
  
end
