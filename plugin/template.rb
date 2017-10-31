class Template < Plugin
  def kyoto
    @client.update("[テンプレ] 京都に帰りたい")
    succes
  end

  def good
    @client.update("[テンプレ] 京都は最高")
    succes
  end

  def bike
    @client.update("[テンプレ] バイクに乗りたい")
    succes
  end

  def succes
    puts "tweet => " + "テンプレツイート"
    puts "Succesful!!"
  end
end
