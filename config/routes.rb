Rails.application.routes.draw do
  resources :personal_portfolios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "personal_portfolios#home"
  get "projects" => "personal_portfolios#projects"
  get "resume" => "personal_portfolios#resume"
end
