require 'httparty'
require 'json'

class Product < ActiveRecord::Base
  
  def post_to_eventbrite
   # @url_new_string = 'https://www.eventbriteapi.com/v3/categories/?token='+ENV['EVENTBRITE_KEY']
   # HTTParty.get(@url_new_string.to_s)
   @url_new_string = 'https://www.eventbriteapi.com/v3/events/?token='+ENV['EVENTBRITE_KEY']
   @result = HTTParty.post(@url_new_string.to_s,
     :body => { "events": [
        {
            "name": {
                "text": "Test Event 111",
                "html": "Test Event 111"
            },
            "start": {
              "timezone": "America/Los_Angeles"
            },
            "end": {
              "timezone": "America/Los_Angeles"
            },
            "currency": "USD"
        }
    ]}.to_json)
  end
end
