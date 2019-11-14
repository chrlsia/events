Rails.application.routes.draw do
  # we want /events to match the controller - action pair
  # which is events#index
  # root "events#index"
  # get "/events" => "events#index"
  # get '/events/new'=>"events#new"
  # get "/events/:id"=>"events#show",as: "event"
  # get "/events/:id/edit"=>"events#edit",as: "edit_event"
  # patch "events/:id" => "events#update"
  resources :events
end
