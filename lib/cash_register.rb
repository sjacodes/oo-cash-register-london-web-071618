class CashRegister
  
  attr_accessor :total, :discount, :quantity, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount=discount
    @all=[]  
    
  end
   
  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
    i=0
    while i< quantity do 
      @all << title
      i += 1
    end
  end
  
  def apply_discount
    @total = ( 1 - (@discount.to_f/100))*@total
    if @discount > 0
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @all
  end
  
  def void_last_transaction
    last_transaction = self.total
    @total = @total - last_transaction
  end
  
end