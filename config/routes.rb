Rails.application.routes.draw do
  root 'home#index'
  #get 'home/index'
  get 'home/team'
  post "home/team" => 'home#team'
end
