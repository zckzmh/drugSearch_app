Rails.application.routes.draw do

match '/home', to: 'search_pages#home', via: 'get'
match '/query/:id', to: 'drugs#query', via: 'get'

resources :drugs do
   get 'search', :on => :collection
end
root 'drugs#index' 

end
