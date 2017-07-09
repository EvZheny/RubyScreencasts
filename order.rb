class Order

  attr_reader :items, :@placed_at

  include ItemContainer

  def initialize
    @items = Array.new
    #...
  end

  def place
    @placed_at = Time.now

    #
    #
    #
    #
    #
    #

  end

end