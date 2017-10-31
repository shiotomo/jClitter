class Template < Plugin
  def kyoto
    @client.update("[テンプレ] 京都に帰りたい")
    success
  end

  def good
    @client.update("[テンプレ] 京都は最高")
    success
  end

  def bike
    @client.update("[テンプレ] バイクに乗りたい")
    success
  end

  def success
    puts "tweet => " + "テンプレツイート"
    puts "Succesful!!"
  end
end
