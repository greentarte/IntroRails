Rails.application.routes.draw do
  get 'hi/index'
  # root page는 home컨트롤러, index
  # localhost:3000
  root 'home#index'
  get 'index' => 'home#index'
  get '/lotto' => 'home#lotto'
  get '/welcome/:name' => 'home#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
