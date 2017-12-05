require_relative 'src/command'
require_relative 'src/update_token'

# mainメソッド
def main
  if !File.exist?("json/token.json")
    # トークンをjson形式で登録
    puts "please register the key"
    UpdateToken.new.insert
  end
  cli = Command.new
  cli.cmd
end

# mainメソッド呼び出し
if __FILE__ == $0
  main
end
