Rails.application.routes.draw do

match '/home', to: 'search_pages#home', via: 'get'
match '/query/:id', to: 'drugs#query', via: 'get'

resources :drugs
root 'drugs#index' do
end
match  '/',to:'drugs#index',via:'post'

end
