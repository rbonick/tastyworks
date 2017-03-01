class SearchController < ApplicationController
  # Executes a given search for a stock. Will return first 20 stocks whose company name or symbol start with the
  # given query string.
  def execute_search
    # Get symbol / name prefix
    query = params[:query]

    # Search for matching stocks
    # Returns first 20
    # Would add pagination but it is not in scope for this project
    @stocks = Stock.ransack(symbol_start: query, name_start: query, m: 'or').result.first(20)

    render :json => @stocks
  end
end
