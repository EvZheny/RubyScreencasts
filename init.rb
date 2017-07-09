require_relative 'string'
require_relative 'item_container'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'antique_item'
require_relative 'cart'
require_relative 'order'

@items = []
@items << AntiqueItem.new({:price => 101, :weight => 100, :name => 'car'})
@items << RealItem.new({:weight => 100, :price => 101, :name => "kettle"})
@items << RealItem.new({:weight => 100, :price => 101, :name => "dishwahser"})

cart = Cart.new("roman")
cart.add_item RealItem.new({:weight => 100, :price => 101, :name => "car"})
cart.add_item RealItem.new({:weight => 100, :price => 101, :name => "car"})
cart.add_item RealItem.new({:weight => 100, :price => 101, :name => "kettle"})

puts cart.kind_of?(Cart)
puts @items[0].class == AntiqueItem
puts @items[0].class == Item

puts @items[0].respond_to?(:info)

puts @items[0].send(:price)

method = "all_cars"
@items[0].send(all_cars)