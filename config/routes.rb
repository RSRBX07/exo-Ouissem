Rails.application.routes.draw do
  resources :games
  get 'say/Happyday'

  get 'say/Hello'

  get 'say/Goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
