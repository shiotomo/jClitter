require "twitter"

require_relative "../update_token"

class Tweet
  def initialize
    @CMD = 0
    @CONTENT = 1
    @OPTION = 2
    @update = UpdateToken.new
  end

  def command(client, order)
    case order[@CMD]
    when "tweet"
      # ツイートする
      post(client, order)
    when "tl", "timeline"
      # TLを流す
      time_line(client)
    when "usertl"
      if order[@OPTION] != nil
        count_time_line(client, order)
      else
        user_time_line(client, order)
      end
    when "keyedit"
      # 本当に実行していいのか確認
      print "Do you really want to change the key? (y/N)"
      answer = gets.chomp

      if answer == "y" || answer == "Y"
        # keyを変更する
        @update.insert
      end
    when "myprof"
      my_profile(client)
    when "prof"
      user_prof(client, order)
    when nil
      # 何も入力されなかった場合
      # 何もしない
    else
      puts "jClitter: command not found: " + order[@CMD]
    end
  end

  private
  def post(client, order)
    client.update(order[@CONTENT])
    puts "tweet => " + order[@CONTENT]
    puts "Succesful!!"
  end

  private
  def time_line(client)
    client.home_timeline.each do |tweet|
      puts tweet.user.screen_name
      puts tweet.text
      puts ""
    end
  end

  private
  def user_time_line(client, order)
    client.user_timeline(order[@CONTENT]).each do |timeline|
      puts client.status(timeline.id).text
    end
  end

  private
  def count_time_line(client, order)
    client.user_timeline(order[@CONTENT], {count: order[@OPTION]}).each do |timeline|
      puts client.status(timeline.id).text
    end
  end

  private
  def my_profile(client)
    puts "--- My profile ---"
    puts "Account ID : " + client.user.screen_name
    puts "Account name : " + client.user.name
    puts "Profile : " + client.user.description
    print "Tweets : "
    puts client.user.tweets_count
  end

  private
  def user_prof(client, order)
    puts "--- " + client.user(order[@CONTENT]).screen_name + " profile ---"
    puts "Account ID : " + client.user(order[@CONTENT]).screen_name
    puts "Account name : " + client.user(order[@CONTENT]).name
    puts "Profile : " + client.user(order[@CONTENT]).description
    print "Tweets : "
    puts client.user(order[@CONTENT]).tweets_count
  end

  private
  def debug
    puts "debug"
  end
end
