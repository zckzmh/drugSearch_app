Rails.application.routes.draw do
match '/show_item/:md5_id', to:'drugs#show_item',as: "drugs_show_item", via:'get'
resources :drug_items
resources :drugs do
   get 'search', :on => :collection
end
root 'drugs#index' 

end
