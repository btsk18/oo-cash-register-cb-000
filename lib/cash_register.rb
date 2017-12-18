class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price,quantity=0)
    self.total += quantity > 0 ? price : price * quantity
  end
end
