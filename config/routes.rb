Rails.application.routes.draw do
  get "managers/home"
  get "manager/home"
  devise_for :managers, controllers: {
    registrations: "managers/registrations",
    sessions: "managers/sessions",
    passwords: "managers/passwords",
    confirmations: "managers/confirmations"
  }
  devise_for :employees

  get "managers/home" => "managers#home"
  get "managers/managers" => "managers#managers"
  get "managers/employees" => "managers#employees"
  get "managers/schedule" => "managers#schedule"
  get "managers/notification" => "managers#notification"
  get "managers/managers/create" => "managers#create"



  # root to:　ホーム画面ページを入力する   

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
