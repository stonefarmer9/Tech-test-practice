class Shop
  def checkout(string)
    items = string.split('')
    prices = []
    items.each do |item|
      item == 'C' ? prices << 20 : prices << 15
    end
    return prices.reduce(:+)
  end
end
