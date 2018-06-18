Rails.application.routes.draw do
  get 'hi/index'
  # root page는 home컨트롤러, index
  # localhost:3000
  root 'home#index'
  get 'index' => 'home#index'
  get '/lotto' => 'home#lotto'
  get '/welcome/:name' => 'home#welcome'
  get '/google' => 'home#google'
  get '/game' => 'home#game'
  get '/gameresult' => 'home#gameresult'
  get '/random' => 'home#random'
  get '/randomresult' => 'home#randomresult'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
