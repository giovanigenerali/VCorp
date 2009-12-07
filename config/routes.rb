ActionController::Routing::Routes.draw do |map|
  map.resources :inspections

  map.resources :employees, :cars, :departments
  #map.root :controller => "application"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
