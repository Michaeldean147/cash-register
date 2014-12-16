require 'cash_register'

describe CashRegister do

  before do
    @cash_register = CashRegister.new
  end

  describe "#total" do
    it 'starts at 0' do
      total = @cash_register.total
      expect(total).to eq(0)
    end
  end

  describe "#pay" do
    it 'takes amount paid and returns change given' do
      @cash_register.purchase(9.99)
      expect(@cash_register.pay(20.00)).to eq(10.01)
    end
  end

  describe "#purchase" do
    it 'increases the total when purchase is made' do
      item_price = 9.99
      @cash_register.purchase(item_price)
      second_item = 8.50
      @cash_register.purchase(second_item)
      expect(@cash_register.total).to eq(item_price + second_item)
    end
  end
end
