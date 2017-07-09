class Cart

  attr_reader :items

  include ItemContainer

  def initialize(owner)
    @items = Array.new
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each { |i| f.puts i }
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