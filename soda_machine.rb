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
    @sodas.find {|i| i.brand == soda_brand}
  end

  def sell(soda_brand)
    # li.delete_at(li.index(@sodas.b) || li.length)
    drink = @sodas.find {|i| i.brand == soda_brand}
    @cash = @cash + drink.price
    return drink
    @sodas.delete("#{soda_brand}")



  end

end
