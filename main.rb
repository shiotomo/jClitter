require_relative 'src/command'
require_relative 'update_token'

# mainメソッド
def main
  if File.exist?("/json/token.json")
    puts "please subscribe twitter api"
    # トークンをjson形式で登録
    UpdateToken.new.insert
  end
  cli = Command.new
  cli.cmd
end

# mainメソッド呼び出し
if __FILE__ == $0
  main
end
