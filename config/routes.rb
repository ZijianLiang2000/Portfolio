Rails.application.routes.draw do
  resources :personal_portfolios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "personal_portfolios#home"
  get "projects" => "personal_portfolios#projects"
  get "resume" => "personal_portfolios#resume"
  get "loreco" => "personal_portfolios#loreco"
  get "chatbot" => "personal_portfolios#chatbot"
  get "contest_project" => "personal_portfolios#contest_project"
  get "eeg" => "personal_portfolios#eeg"
  get "fitness_app" => "personal_portfolios#fitness_app"
end
