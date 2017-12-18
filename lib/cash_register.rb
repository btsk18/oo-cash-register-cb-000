require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.each {
      self.items << title
    } 
    binding.pry
  end

  def apply_discount
    discount = self.total * (self.discount.to_f / 100)
    discounted_total = self.total -= discount.to_i
    discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{discounted_total}."
  end


end
