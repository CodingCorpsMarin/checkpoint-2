class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = ""
  end

  def current_inventory_count
    sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
     soda = find_soda(soda_brand)
     if soda != nil
       @sodas.delete(soda)
       @cash = @cash + soda.price
       return soda
     end
     nil
  end
 
end


