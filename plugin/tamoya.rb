class Tamoya < Plugin
  def challenge
    case rand(10)
    when 0
      @client.update("[たもちゃれ] たもちゃれ成功！\n#{Time.now}")
    when 1
      @client.update("[たもちゃれ] スリッパの音が聞こえた\n失敗!!\n#{Time.now}")
    when 2
      @client.update("[たもちゃれ] 猫の声が聞こえた\n失敗!!\n#{Time.now}")
    when 3
      @client.update("[たもちゃれ] お箸を落としてしまった\n失敗!!\n#{Time.now}")
    when 4
      @client.update("[たもちゃれ] 後ろから声をかけられてしまった\n失敗!!\n#{Time.now}")
    when 5
      @client.update("[たもちゃれ] 車にひかれてしまった\n失敗!!\n#{Time.now}")
    when 6
      @client.update("[たもちゃれ] ネギがなかった\n失敗!!\n#{Time.now}")
    when 7
      @client.update("[たもちゃれ] スプーンを落としてしまった\n失敗!!\n#{Time.now}")
    when 8
      @client.update("[たもちゃれ] うめき声が聞こえた\n失敗!!\n#{Time.now}")
    when 9
      @client.update("[たもちゃれ] 薬味が切れてた\n失敗!!\n#{Time.now}")
    end
    puts "tamoya challenge!!"
  end
end
