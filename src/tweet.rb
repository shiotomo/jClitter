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
      time_line(client, order)
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
  def time_line(client, order)
    client.home_timeline.each do |tweet|
      puts tweet.user.screen_name + ' : ' + tweet.text
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
  def debug
    puts "debug"
  end
end
