require "twitter"

require_relative "token"
require_relative "tweet"

class Command
  def initialize
    @client = Token.new.token
    @tweet = Tweet.new

    @CMD = 0
    @CONTENT = 1
  end

  def cmd
    while 1
      prompt
      order = gets.chomp.split

      if order[@CMD] == "exit" || order[@CMD] == "q"
        exit
      else
        @tweet.command(@client, order)
      end
    end
  end

  # PROMPTの設定
  def prompt
    print @client.user.screen_name + "@jClitter$ "
  end
end
