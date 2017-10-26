require "twitter"

class Profile < Plugin
  def my_profile
    puts "--- My profile ---"
    puts "Account ID : " + @client.user.screen_name
    puts "Account name : " + @client.user.name
    puts "Profile : " + @client.user.description
    print "Tweets : "
    puts @client.user.tweets_count
  end

  def user_profile
    puts "--- " + @client.user(@order[@CONTENT]).screen_name + " profile ---"
    puts "Account ID : " + @client.user(@order[@CONTENT]).screen_name
    puts "Account name : " + @client.user(@order[@CONTENT]).name
    puts "Profile : " + @client.user(@order[@CONTENT]).description
    print "Tweets : "
    puts @client.user(@order[@CONTENT]).tweets_count
  end
end
