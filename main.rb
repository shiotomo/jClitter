require_relative 'src/command'

# mainメソッド
def main
  if File.exist?("/json/token.json")
    puts "please subscribe twitter api"
    exit
  end
  cli = Command.new
  cli.cmd
end

# mainメソッド呼び出し
if __FILE__ == $0
  main
end
