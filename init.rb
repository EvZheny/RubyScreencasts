require_relative "store_application"

StoreApplication.new

@items = []
@items << AntiqueItem.new("car", price: 101, weight: 100)
@items << RealItem.new({:weight => 100, :price => 101, :name => "kettle"})
@items << RealItem.new({:weight => 100, :price => 101, :name => "dishwahser"})

cart = Cart.new("roman")
cart.add_item RealItem.new({:weight => 100, :price => 101, :name => "car"})
cart.add_item RealItem.new({:weight => 100, :price => 101, :name => "car"})
cart.add_item RealItem.new({:weight => 100, :price => 101, :name => "kettle"})

method = "all_cars"
p cart.send(method)