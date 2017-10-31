require "twitter"

require_relative "../update_token"
require_relative "../plugin/plugin"
require_relative "../plugin/tweet"
require_relative "../plugin/time_line"
require_relative "../plugin/profile"
require_relative "../plugin/follow"
require_relative "../plugin/template"

class Cmd_list
  def initialize
    @CMD = 0
    @OPTION = 2
    @update = UpdateToken.new
  end

  def command(client, order)
    case order[@CMD]
    when "tweet"
      # ツイートする
      Tweet.new(client, order).post
    when "tl", "timeline"
      # TLを流す
      Time_line.new(client, order).time_line
    when "usertl"
      if order[@OPTION] != nil
      Time_line.new(client, order).count_time_line
      else
      Time_line.new(client, order).user_time_line
      end
    when "myprof"
      Profile.new(client, order).my_profile
    when "prof"
      Profile.new(client, order).user_profile
    when "follow"
      Follow.new(client, order).follow
    when "unfollow"
      Follow.new(client, order).unfollow
    when "kyoto"
      Template.new(client, order).kyoto
    when "good"
      Template.new(client, order).good
    when "bike"
      Template.new(client, order).bike
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
end
