require "twitter"

require_relative "token"
require_relative "cmd_list"

class Command
  def initialize
    @client = Token.new.token
    @cmd_list = Cmd_list.new

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
        @cmd_list.command(@client, order)
      end
    end
  end

  # PROMPTの設定
  def prompt
    print @client.user.screen_name + "@jClitter$ "
  end
end
