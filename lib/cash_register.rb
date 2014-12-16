class CashRegister

  def initialize
    @total = 0
  end

  def total
    return @total
  end

  def purchase(amount)
    @total = @total + amount
  end

  def pay(amount)
    amount - @total
  end
end
