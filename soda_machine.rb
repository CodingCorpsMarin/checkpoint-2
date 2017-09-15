class SodaMachine

  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find {|x| x.brand == soda_brand} 
  end

  def sell(soda_brand)
    if find_soda(soda_brand) == false
       nil
    else
      @sold_soda = soda_brand
      @sold_soda
      @cash << @sold_soda.price
      @sodas.delete(@sold_soda)
    end
  end

end