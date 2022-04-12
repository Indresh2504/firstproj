Rails.application.routes.draw do
  
  #get "", to:"pages#home" #it is also works 
  root  to:"home#index"
  get "/registration",  to:"home#registration"
  post "/create",       to:"home#create"
  get "/list",          to:"home#list"
  get "/modify/:id",    to:"home#modify"
  post "/update/:id",   to:"home#update"
  get "/delete/:id",    to:"home#delete"
  
  #get "search", to: redirect("https://www.google.com/search")
  #get "*path",  to:redirect("/error")
end
