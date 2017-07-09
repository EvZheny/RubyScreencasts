class Cart

  attr_reader :items

  include ItemContainer
  class ItemNotSupported < StandardError; end

  UNSUPPORTED_ITEMS = [AntiqueItem, VirtualItem]

  def initialize(owner)
    @items = Array.new
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each do |i|
        raise ItemNotSupported, "Cart currently ..." if i.class == UNSUPPORTED_ITEMS.include?(i.class)
        f.puts i
      end
    end
  end

  def read_from_file
    begin# begin/end we can delete
      File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item}
      @items.uniq!
    rescue Errno::ENOENT
      File.open("#{@owner}_cart.txt", "w") {}
      puts "File #{@owner}_cart.txt created"
    end
  end

end