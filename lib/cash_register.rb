class CashRegister 
    attr_accessor :total
    @@total = [] 
    def initialize(*employee_discount) 
        @total = 0
        @employee_discount = employee_discount
    end

    def total 
        @total
    end

    def add_item (title, price, *quantity)
        
        @total += price.to_f*quantity.to_f
       
        @total
    end

    def apply_discount 
       if employee_discount > 0 
          discount = @total*(employee_discount/100).to_f 
          @total = @total - discount 
          @@total << @total
          "Your latest total Price is : #{@total}" 
       else 
         "No discount to apply"
       end        
    end

    def items (name, price, *quantity)
        if quantity
            quantity.times do 
                [name]
            end
        else
            [name]
        end
    end

 def void_last_transaction 
     @@total.pop.sum
 end
end
