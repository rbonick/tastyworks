Rails.application.routes.draw do
  get '/history', to: 'stock#historical_data'
  get '/execute-search', to: 'search#execute_search'
end
