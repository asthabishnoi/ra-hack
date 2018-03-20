Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/statue'
  namespace :api do
   namespace :v1 do
   	get '/statue' => 'statues_api#statues'
   end
  end
end
