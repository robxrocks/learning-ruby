class Global
  def initialize
    @@globalCounter = 0
    @localCounter = 0
  end

  def incrementGlobal
    @@globalCounter += 1
  end

  def getGlobal
    puts(@@globalCounter)
  end

  def incrementLocal
    @localCounter += 1
  end

  def getLocal
    puts(@localCounter)
  end

end
