require_relative "store_application"

StoreApplication.config do |app|

  app.name = "My Store"
  app.environment = :prodaction #:development

  app.admin do |admin|
    admin.email = "admin@mystore.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end

end

unless StoreApplication.frozen?
  StoreApplication.name = "My name"
end
StoreApplication::Admin.email = "new@email.com"
puts StoreApplication::Admin.email

p.StoreApplication.environment
p.StoreApplication.name
p.StoreApplication::Admin.email
p.StoreApplication::Admin.login

#@items = []
#@items << AntiqueItem.new("car", price: 101, weight: 100)
#@items << RealItem.new({:weight => 100, :price => 101, :name => "kettle"})
#@items << RealItem.new({:weight => 100, :price => 101, :name => "dishwahser"})

order = Order.new
order.place
puts order.placed_at      #time
puts order.placed_at.to_i #seconds from 1 jan 1970
puts order.placed_at.utc  #utc time
puts order.placed_at.strftime("%b %-d, %Y %H:%M:%S")# Jan 1, 1970 15:00:00