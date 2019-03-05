require './shop.rb'

describe 'shop' do
  it 'returns the total for a simple basket' do
    shop = Shop.new
    expect(shop.checkout('CD')).to eq(35)
  end

  it 'returns the total for a different basket too' do
    shop = Shop.new
    expect(shop.checkout('DDC')).to eq(50)
  end
end
