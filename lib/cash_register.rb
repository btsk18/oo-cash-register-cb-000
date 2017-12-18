require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    discount = self.total * (self.discount.to_f / 100)
    discounted_total = self.total -= discount.to_i
    discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{discounted_total}."
  end

  def items

  end
end
