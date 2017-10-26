class Tweet < Plugin
  def post
    @client.update(@order[@CONTENT])
    puts "tweet => " + @order[@CONTENT]
    puts "Succesful!!"
  end
end
