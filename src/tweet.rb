require "twitter"

class Tweet
  def initialize
    @CMD = 0
    @CONTENT = 1
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
      user_time_line
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
      puts "Succesful!!"
  end

  def time_line(client, order)
      client.home_timeline.each do |tweet|
        puts tweet.user.screen_name + ' : ' + tweet.text
      end
  end

  def user_time_line
  end

  def debug
    puts "debug"
  end
end
