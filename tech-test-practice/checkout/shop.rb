class Shop
  def initialize
    @prices = []
  end

  def checkout(string)
    items = string.split('')
    get_price_list(items)
    return @prices.reduce(:+)
  end

  private

  def get_price_list(items)
    items.each do |item|
      item == 'C' ? @prices << 20 : @prices << 15
    end
  end
end
