class Gacha < Plugin
  def roulette
    case rand(6)
    when 0
      @client.update("[ガチャ] #guni_memo ぐにきはイケメン! #{Time.now}")
    when 1
      @client.update("[ガチャ] #guni_memo だーやまんは実質KBJR! #{Time.now}")
    when 2
      @client.update("[ガチャ] #guni_memo プロゲーマーたむ! #{Time.now}")
    when 3
      @client.update("[ガチャ] #guni_memo ﾊﾟﾁｽﾛおじさんJS! #{Time.now}")
    when 4
      @client.update("[ガチャ] #guni_memo イケ(メン)! #{Time.now}")
    when 5
      @client.update("[ガチャ] #guni_memo 可読性ポリスK! #{Time.now}")
    end
    puts "gacha success!"
  end
end
