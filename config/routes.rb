Rails.application.routes.draw do
  get '/search', to: 'search_controller#search'
  get '/execute-search', to: 'search_controller#execute_search'
end
