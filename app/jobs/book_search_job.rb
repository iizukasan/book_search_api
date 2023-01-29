require 'book_search_api_client'

class BookSearchJob < ApplicationJob
  queue_as :default

  def perform(*args)
    api_instance = BookSearchApiClient::V1Api.new
    appkey = ENV['BOOK_SEARCH_API_APP_KEY'] || '' # String |
    pref = args[0] || '' # String |
    opts = {
      city: args[1] || '', # String |
      systemid: '', # String |
      geocode: '', # String |
      format: 'json', # String |
      callback: '', # String |
      limit: args[2].to_i || 100 # Integer |
    }

    begin
      #Returns a list of libraries.
      result = api_instance.get_libraries(appkey, pref, opts)
      p result
    rescue BookSearchApiClient::ApiError => e
      puts "Exception when calling V1Api->get_libraries: #{e}"
    end
  end
end
