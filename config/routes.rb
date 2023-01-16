Rails.application.routes.draw do

  scope '/pokemons' do

    get '/', to: 'pokemons#index'
    get '/:id', to: 'pokemons#show'

  end
  
end
