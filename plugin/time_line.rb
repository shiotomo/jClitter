require "twitter"

class Time_line < Plugin
  def time_line
    @client.home_timeline.each do |tweet|
      puts "--- " + tweet.user.name + " : " + tweet.user.screen_name + " ---"
      puts tweet.text
    end
  end

  def user_time_line
    @client.user_timeline(@order[@CONTENT]).each do |timeline|
      puts @client.status(timeline.id).text
    end
  end

  def count_time_line
    @client.user_timeline(@order[@CONTENT], {count: @order[@OPTION]}).each do |timeline|
      puts @client.status(timeline.id).text
    end
  end
end
