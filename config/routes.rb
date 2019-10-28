Rails.application.routes.draw do
  # we want /events to match the controller - action pair
  # which is events#index
  get "/events" => "events#index"
  get "/events/:id"=>"events#show"
end
