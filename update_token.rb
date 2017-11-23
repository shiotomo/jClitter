require "json"

class UpdateToken
  def insert
    token = {}

    print "consumer_key => "
    token["consumer_key"] = gets.chomp
    print "consumer_secret => "
    token["consumer_secret"] = gets.chomp
    print "access_token => "
    token["access_token"] = gets.chomp
    print "access_token_secret => "
    token["access_token_secret"] = gets.chomp

    update(token)
  end

  def update(token)
    File.open("json/token.json", "w") do |f|
      JSON.dump(token, f)
    end
  end
end
