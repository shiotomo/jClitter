require 'twitter'

require_relative 'token_json'

class Token
  def initialize
    token_json = TokenJson.new
    @token_data = token_json.json_array
  end

  def token
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        =  @token_data["consumer_key"]
      config.consumer_secret     =  @token_data["consumer_secret"]
      config.access_token        =  @token_data["access_token"]
      config.access_token_secret =  @token_data["access_token_secret"]
    end
  end
end
