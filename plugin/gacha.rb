class Gacha < Plugin
  def roulette
    case rand(6)
    when 0
      @client.update("[ガチャ] #guni_memo ぐにきはイケメン")
    when 1
      @client.update("[ガチャ] #guni_memo だーやまんは実質KBJR")
    when 2
      @client.update("[ガチャ] #guni_memo プロゲーマーたむ")
    when 3
      @client.update("[ガチャ] #guni_memo ﾊﾟﾁｽﾛおじさんJS")
    when 4
      @client.update("[ガチャ] #guni_memo イケ(メン)")
    when 5
      @client.update("[ガチャ] #guni_memo 失敗")
    end
    puts "gacha success!"
  end
end
