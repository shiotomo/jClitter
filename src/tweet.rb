require "twitter"

class Tweet
  def initialize
    @CMD = 0
    @CONTENT = 1
    @OPTION = 2
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
