class Follow < Plugin
  def follow
    @client.follow(@order[@CONTENT])
  end

  def unfollow
    @client.unfollow(@order[@CONTENT])
  end
end
