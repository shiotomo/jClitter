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
    if !File.exists?("json")
      Dir.mkdir('json', 0755)
    end
    File.open("json/token.json", "w") do |f|
      f.puts "{"
      f.puts "  \"consumer_key\"        : \"" + token["consumer_key"] + "\","
      f.puts "  \"consumer_secret\"     : \"" + token["consumer_secret"] + "\","
      f.puts "  \"access_token\"        : \"" + token["access_token"] + "\","
      f.puts "  \"access_token_secret\" : \"" + token["access_token_secret"]
      f.puts "}"
    end
  end
end
