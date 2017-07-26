module PartyGoer

  def initialize
    @drinkCount = 0
  end

  def drink
    if @drinkCount < 3
      @drinkCount += 1
      return true
    else
      return false
    end
  end

  def sing
    system("say Party party party!")
    return "I like to party!"
  end

  def cause_havoc
      raise PersonalizedHavocError
  end

  def invited?
    true
  end
end

class PersonalizedHavocError < StandardError

  def initialize(msg="Chaos!")
    super
  end

end
